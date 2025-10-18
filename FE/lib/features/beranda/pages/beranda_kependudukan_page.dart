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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // === INFO CARDS ===
          Row(
            children: const [
              Expanded(
                child: InfoCard(
                  icon: Icons.family_restroom,
                  title: 'Total Keluarga',
                  value: '2',
                  color: Colors.red,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: InfoCard(
                  icon: Icons.groups_2,
                  title: 'Total Penduduk',
                  value: '3',
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // === PIE CHART: STATUS PENDUDUK ===
          const PieChartCard(
            title: 'Status Penduduk',
            subtitle: 'Status domisili dan keberadaan penduduk',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),

          // === PIE CHART: JENIS KELAMIN ===
          const PieChartCard(
            title: 'Jenis Kelamin Penduduk',
            subtitle: 'Perbandingan jumlah laki-laki dan perempuan',
            color: Colors.green,
          ),
          const SizedBox(height: 16),

          // === PIE CHART: PEKERJAAN ===
          const PieChartCard(
            title: 'Pekerjaan Penduduk',
            subtitle: 'Distribusi pekerjaan di masyarakat',
            color: Colors.orange,
          ),
          const SizedBox(height: 16),

          // === PIE CHART: PERAN DALAM KELUARGA ===
          const PieChartCard(
            title: 'Peran dalam Keluarga',
            subtitle: 'Kepala keluarga, pasangan, anak, dan lainnya',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
