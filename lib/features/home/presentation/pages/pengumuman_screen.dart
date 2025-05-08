import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PengumumanScreen extends StatefulWidget {
  const PengumumanScreen({super.key});

  @override
  State<PengumumanScreen> createState() => _PengumumanScreenState();
}

class _PengumumanScreenState extends State<PengumumanScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.toNamed('/home');
        break;
      case 1:
        Get.toNamed('/riwayat');
        break;
      case 2:
        // Sudah di pengumuman
        break;
      case 3:
        Get.toNamed('/akun');
        break;
    }
  }

  Widget buildCardPengumuman(String title, String subtitle, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.email_outlined, size: 32.sp, color: Colors.black54),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(height: 4.h),
                Text(
                  date,
                  style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pengumuman", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: ListView(
          children: [
            buildCardPengumuman(
              'Kegiatan PKK di desa Bagor dal...',
              'upload galeri kegiatan PKK',
              '07–08–2024',
            ),
            buildCardPengumuman(
              'Kegiatan PKK di desa Bagor dal...',
              'upload galeri kegiatan PKK',
              '07–08–2024',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: 'Pengumuman',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
