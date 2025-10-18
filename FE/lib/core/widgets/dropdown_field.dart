import 'package:flutter/material.dart';

class DropdownField extends StatelessWidget {
  final String label;
  final String hintText;
  final List<String> items;
  final String? value;
  final void Function(String?)? onChanged;

  const DropdownField({
    super.key,
    required this.label,
    required this.hintText,
    required this.items,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: Colors.grey, width: 0.5),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            border: border,
            enabledBorder: border,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          ),
          isExpanded: true,
          value: value,
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: onChanged,
          hint: Text(hintText),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
