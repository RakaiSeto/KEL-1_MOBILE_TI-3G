import 'package:flutter/material.dart';

class BerandaKegiatanPage extends StatelessWidget {
  const BerandaKegiatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Beranda Kegiatan\n(Tampilkan ringkasan kegiatan terbaru, jadwal, dsb)',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
