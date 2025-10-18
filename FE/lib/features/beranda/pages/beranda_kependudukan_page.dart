import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/pie_chart_card.dart';

class BerandaKependudukanPage extends StatelessWidget {
  const BerandaKependudukanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // === INFO CARDS ===
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              InfoCard(
                icon: Icons.family_restroom,
                title: 'Total Keluarga',
                value: '2',
                color: Colors.red,
              ),
              InfoCard(
                icon: Icons.groups_2,
                title: 'Total Penduduk',
                value: '3',
                color: Colors.purple,
              ),
            ],
          ),
          const SizedBox(height: 16),

          // === PIE CHART SECTIONS ===
          const PieChartCard(
            title: 'Status Penduduk',
            subtitle: 'Pendapatan lainnya',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Jenis Kelamin Penduduk',
            subtitle: 'Pendapatan lainnya',
            color: Colors.green,
          ),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Pekerjaan Penduduk',
            subtitle: 'Pendapatan lainnya',
            color: Colors.orange,
          ),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Peran dalam Keluarga',
            subtitle: 'Pendapatan lainnya',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
