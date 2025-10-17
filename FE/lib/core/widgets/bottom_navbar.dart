import 'package:flutter/material.dart';
import 'package:revamp_jawara/features/beranda/pages/beranda_page.dart';
import 'package:revamp_jawara/features/data_warga/pages/data_warga_page.dart';
import 'package:revamp_jawara/features/kegiatan/pages/kegiatan_page.dart';
import 'package:revamp_jawara/features/keuangan/pages/keuangan_page.dart';
import 'package:revamp_jawara/features/lainnya/pages/lainnya_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const BerandaPage(),
    const DataWargaPage(),
    const KegiatanPage(),
    const KeuanganPage(),
    const LainnyaPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Data Warga',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Kegiatan'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Keuangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Lainnya',
          ),
        ],
      ),
    );
  }
}
