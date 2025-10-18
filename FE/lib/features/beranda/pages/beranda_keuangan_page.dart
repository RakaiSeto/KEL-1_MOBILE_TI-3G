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
            children: const [
              Expanded(
                child: InfoCard(
                  icon: Icons.savings,
                  title: 'Total Pemasukan',
                  value: '10 ribu',
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: InfoCard(
                  icon: Icons.money_off,
                  title: 'Total Pengeluaran',
                  value: '10 ribu',
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: InfoCard(
                  icon: Icons.receipt_long,
                  title: 'Jumlah Transaksi',
                  value: '10 ribu',
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // === CHART SECTIONS ===
          const BarChartCard(
            title: 'Pemasukan per Bulan',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),
          const BarChartCard(title: 'Pengeluaran per Bulan', color: Colors.red),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Pemasukan Berdasarkan Kategori',
            subtitle: 'Pendapatan Lainnya',
            color: Colors.purple,
          ),
          const SizedBox(height: 16),
          const PieChartCard(
            title: 'Pengeluaran Berdasarkan Kategori',
            subtitle: 'Belanja Rutin',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
