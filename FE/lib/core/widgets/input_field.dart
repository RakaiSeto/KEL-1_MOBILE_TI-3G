import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final IconButton? suffixIcon;
  final TextEditingController? controller;

  const InputField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    const inputDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.lightGreen, width: 1.0),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: inputDecoration.copyWith(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
