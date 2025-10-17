import 'package:flutter/material.dart';
import '../pages/beranda_keuangan_page.dart';
import '../pages/beranda_kegiatan_page.dart';
import '../pages/beranda_kependudukan_page.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int selectedIndex = 0;

  final List<String> titles = ["Keuangan", "Kegiatan", "Kependudukan"];
  final List<Widget> pages = const [
    BerandaKeuanganPage(),
    BerandaKegiatanPage(),
    BerandaKependudukanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // === TOP BUTTON NAVIGATION ===
          // Bagian Top Button Navigation
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // biar tidak overflow
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(titles.length, (index) {
                  final isSelected = selectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ChoiceChip(
                      label: Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 12, // font lebih kecil agar muat
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: Colors.green[300],
                      backgroundColor: Colors.grey[300],
                      onSelected: (_) => setState(() => selectedIndex = index),
                    ),
                  );
                }),
              ),
            ),
          ),

          // === PAGE CONTENT ===
          Expanded(child: pages[selectedIndex]),
        ],
      ),
    );
  }
}
