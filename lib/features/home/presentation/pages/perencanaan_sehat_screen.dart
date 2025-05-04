import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
// import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
// import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PerencanaanSehatScreen extends StatelessWidget {
  const PerencanaanSehatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pusController = TextEditingController();
    final wusController = TextEditingController();
    final kbPriaController = TextEditingController();
    final kbWanitaController = TextEditingController();
    final tabunganKeluargaController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Perencanaan Sehat',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              InputFormField(
                controller: pusController,
                hintText: 'Masukkan jumlah',
                label: 'Pria Usia Subur (PUS)',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: wusController,
                hintText: 'Masukkan jumlah',
                label: 'Wanita Usia Subur (WUS)',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: kbPriaController,
                hintText: 'Masukkan jumlah',
                label: 'Anggota KB Pria',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: kbWanitaController,
                hintText: 'Masukkan jumlah',
                label: 'Anggota KB Wanita',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: tabunganKeluargaController,
                hintText: 'Masukkan jumlah',
                label: 'KK yang Memiliki Tabungan Keluarga',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: ZoomTapAnimation(
          child: ButtonFill(
            text: 'Kirim',
            textColor: Colors.white,
            onPressed: () {
              // Aksi setelah tekan tombol Kirim
            },
          ),
        ),
      ),
    );
  }
}
