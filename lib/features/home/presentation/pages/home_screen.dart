import 'package:e_pkk_nganjuk/_core/component/button/card_button_actions.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/components/card_pengumuman.dart';
import 'package:e_pkk_nganjuk/features/home/presentation/components/widget_carousel_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';
import '../../../../services/preferences/preferences_service.dart';
import '../components/header_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String role = 'User';
  String? roleBidang;
  String? fullName = "User";

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    final user = await PreferencesService.getUser();
    if (!mounted) return;
    if (user != null) {
      setState(() {
        fullName = user.fullName;
        role = user.role?.name ?? 'Tidak diketahui';
        roleBidang = user.organization?.name;
      });
    } else {
      setState(() {
        role = 'Tidak diketahui';
        roleBidang = '';
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        break;
      case 1:
        Get.toNamed(Routes.RIWAYAT);
        break;
      case 2:
        Get.toNamed(Routes.PENGUMUMAN);
        break;
      case 3:
        Get.toNamed(Routes.AKUN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderHome(
              textUser: fullName ?? 'User',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      WidgetCarouselBanner(),
                      SizedBox(height: 32.h),
                      if (roleBidang == 'Laporan Umum') ...[
                        CardButtonActions(
                          backroundColor: ButtonActionsColors.fillLaporan,
                          strokeColor: ButtonActionsColors.strokeLaporan,
                          titleText: 'Upload Laporan Umum',
                          subTitle: 'upload laporan umum PKK disini',
                          imageAssets: 'assets/images/ic_report.png',
                          onTab: () {
                            Get.toNamed(Routes.UPLOAD_LAPORAN, arguments: {
                              'role': role,
                              'role_bidang': roleBidang,
                            });
                          },
                        ),
                      ] else ...[
                        CardButtonActions(
                          backroundColor: ButtonActionsColors.fillLaporan,
                          strokeColor: ButtonActionsColors.strokeLaporan,
                          titleText: 'Upload Laporan',
                          subTitle: 'upload laporan PKK disini',
                          imageAssets: 'assets/images/ic_report.png',
                          onTab: () {
                            Get.toNamed(Routes.UPLOAD_LAPORAN, arguments: {
                              'role': role,
                              'role_bidang': roleBidang,
                            });
                          },
                        ),
                      ],
                      SizedBox(height: 14.h),
                      CardButtonActions(
                        backroundColor: ButtonActionsColors.fillGalery,
                        strokeColor: ButtonActionsColors.strokeGalery,
                        titleText: 'Upload Galeri',
                        subTitle: 'upload galeri kegiatan PKK disini',
                        imageAssets: 'assets/images/ic_gallery.png',
                        onTab: () {
                          Get.toNamed(Routes.UPLOAD_GALERI);
                        },
                      ),
                      SizedBox(height: 32.h),
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.PENGUMUMAN),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Pengumuman',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold)),
                                Text('Daftar pengumuman dari pusat',
                                    style: TextStyle(fontSize: 12.sp)),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16.sp, color: Colors.grey),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 16.h),
                            child: CardPengumuman(
                              title: 'Kegiatan PKK di desa Bagor dal...',
                              subTitle: 'upload galeri kegiatan PKK',
                              dateText: '07-10-2024',
                              onTab: () {},
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
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
