import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
// import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
// import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KaderPokjaIVScreen extends StatelessWidget {
  const KaderPokjaIVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final posyanduController = TextEditingController();
    final giziController = TextEditingController();
    final keslingController = TextEditingController();
    final narkobaController = TextEditingController();
    final phbsController = TextEditingController();
    final kbController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Kader Pokja IV',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              InputFormField(
                controller: posyanduController,
                hintText: 'Masukkan jumlah',
                label: 'Posyandu',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: giziController,
                hintText: 'Masukkan jumlah',
                label: 'Gizi',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: keslingController,
                hintText: 'Masukkan jumlah',
                label: 'Kesling',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: narkobaController,
                hintText: 'Masukkan jumlah',
                label: 'Penyuluhan Narkoba',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: phbsController,
                hintText: 'Masukkan jumlah',
                label: 'PHBS',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: kbController,
                hintText: 'Masukkan jumlah',
                label: 'KB',
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
              // Aksi kirim data
            },
          ),
        ),
      ),
    );
  }
}
