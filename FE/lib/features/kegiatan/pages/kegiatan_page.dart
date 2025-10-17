import 'package:flutter/material.dart';

class KegiatanPage extends StatelessWidget {
  const KegiatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Halaman Kegiatan\n(Tampilkan daftar kegiatan, detail kegiatan, dsb)',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
