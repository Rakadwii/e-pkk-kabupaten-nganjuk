import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SandangScreen extends StatelessWidget {
  const SandangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final panganController = TextEditingController();
    final sandangController = TextEditingController();
    final jasaController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Sandang',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Jumlah Industri Rumah Tangga',
                color: TextColors.grey900,
              ),
              SizedBox(height: 24.h),
              InputFormField(
                controller: panganController,
                hintText: 'Masukkan jumlah',
                label: 'Pangan',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: sandangController,
                hintText: 'Masukkan jumlah',
                label: 'Sandang',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: jasaController,
                hintText: 'Masukkan jumlah',
                label: 'Jasa',
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
              // Aksi kirim data atau navigasi
            },
          ),
        ),
      ),
    );
  }
}
