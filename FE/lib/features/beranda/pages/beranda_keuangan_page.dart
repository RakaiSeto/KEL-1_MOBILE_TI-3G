import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/bar_chart_card.dart';
import '../widgets/pie_chart_card.dart';

class BerandaKeuanganPage extends StatelessWidget {
  const BerandaKeuanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // === STATISTIC CARDS ===
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              InfoCard(
                icon: Icons.savings,
                title: 'Total Pemasukan',
                value: '10 ribu',
                color: Colors.green,
              ),
              InfoCard(
                icon: Icons.money_off,
                title: 'Total Pengeluaran',
                value: '10 ribu',
                color: Colors.red,
              ),
              InfoCard(
                icon: Icons.receipt_long,
                title: 'Jumlah Transaksi',
                value: '10 ribu',
                color: Colors.amber,
              ),
            ],
          ),
          const SizedBox(height: 16),

          // === CHART SECTIONS ===
          const BarChartCard(title: 'Pemasukan perbulan', color: Colors.purple),
          const SizedBox(height: 16),
          const BarChartCard(title: 'Pengeluaran perbulan', color: Colors.red),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Pemasukan berdasarkan kategori',
            subtitle: 'Pendapatan lainnya',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Pengeluaran berdasarkan kategori',
            subtitle: 'Pendapatan lainnya',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
