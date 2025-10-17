import 'package:flutter/material.dart';

class DataWargaPage extends StatelessWidget {
  const DataWargaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Halaman Data Warga\n(Tampilkan data warga, pencarian, filter, dsb)',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
