import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/bar_chart_card.dart';
import '../widgets/list_info_card.dart';

class BerandaKegiatanPage extends StatelessWidget {
  const BerandaKegiatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // === INFO CARD ===
          const InfoCard(
            icon: Icons.event_available,
            title: 'Total Kegiatan',
            value: '10 ribu',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),

          // === CHART KATEGORI ===
          const BarChartCard(
            title: 'Kegiatan per kategori',
            color: Colors.orange,
          ),
          const SizedBox(height: 16),

          // === KEGIATAN BERDASARKAN WAKTU ===
          const ListInfoCard(
            icon: Icons.access_time,
            title: 'Kegiatan Berdasarkan Waktu',
            color: Colors.green,
            items: ['Sudah Lewat: 1', 'Hari Ini: 0', 'Akan Datang: 0'],
          ),
          const SizedBox(height: 16),

          // === PENANGGUNG JAWAB TERBANYAK ===
          const ListInfoCard(
            icon: Icons.person,
            title: 'Penanggung Jawab Terbanyak',
            color: Colors.deepPurple,
            items: [
              '1. Budi Santoso - 5 kegiatan',
              '2. Rina Kartika - 3 kegiatan',
              '3. Dimas Putra - 2 kegiatan',
            ],
          ),
          const SizedBox(height: 16),

          // === PENGELUARAN PERBULAN ===
          const BarChartCard(title: 'Pengeluaran perbulan', color: Colors.red),
        ],
      ),
    );
  }
}
