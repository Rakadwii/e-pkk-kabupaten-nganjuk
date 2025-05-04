import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../services/preferences/preferences_service.dart';
import '../../../../routes/app_routes.dart';

class AkunScreen extends StatefulWidget {
  const AkunScreen({super.key});

  @override
  State<AkunScreen> createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
  String? fullName = "User";
  String? phoneNumber = "-";

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    final user = await PreferencesService.getUser();
    if (user != null) {
      setState(() {
        fullName = user.fullName ?? "User";
        phoneNumber = user.phoneNumber ?? "-";
      });
    }
  }

  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.toNamed(Routes.HOME);
        break;
      case 1:
        Get.toNamed(Routes.RIWAYAT);
        break;
      case 2:
        Get.toNamed(Routes.PENGUMUMAN);
        break;
      case 3:
        // Halaman Akun aktif
        break;
    }
  }

  // ... (buildListTile dan build() method tetap sama)

  Widget buildListTile({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          children: [
            // Card Profile
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.person, size: 32, color: Colors.white),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fullName ?? '-',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text(phoneNumber ?? '-'),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  Text("Informasi Akun Pengguna",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12.h),
                  buildListTile(
                    icon: Icons.person_outline,
                    title: 'Informasi Akun',
                    onTap: () {
                      // Navigasi ke halaman detail informasi akun
                      Get.toNamed(Routes.INFO_AKUN);
                    },
                  ),
                  buildListTile(
                    icon: Icons.lock_outline,
                    title: 'Ubah Kata Sandi',
                    onTap: () {
                      Get.toNamed(Routes.UBAH_SANDI);
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),
            // Informasi Lainnya
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  Text("Informasi Lainnya",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12.h),
                  buildListTile(
                    icon: Icons.info_outline,
                    title: 'Tentang Kami',
                    onTap: () {
                      // Navigasi ke halaman Tentang Kami
                      Get.toNamed(Routes.TENTANG);
                    },
                  ),
                  buildListTile(
                    icon: Icons.logout,
                    title: 'Keluar',
                    onTap: () {
                      // hapus data user lalu arahkan ke login
                      // PreferencesService.clearUserData();
                      //Get.offAllNamed(Routes.AUTH_LOGIN);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Riwayat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.campaign), label: 'Pengumuman'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}
