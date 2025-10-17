import 'package:flutter/material.dart';

class BerandaKependudukanPage extends StatelessWidget {
  const BerandaKependudukanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Beranda Kependudukan\n(Tampilkan statistik warga, jumlah KK, usia produktif, dsb)',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
