import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KesehatanScreen extends StatelessWidget {
  const KesehatanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final posyanduJumlahController = TextEditingController();
    final posyanduTintegrasiController = TextEditingController();
    final lansiaKlpController = TextEditingController();
    final lansiaAnggotaController = TextEditingController();
    final lansiaKartuController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Kesehatan',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Posyandu',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: posyanduJumlahController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Posyandu',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: posyanduTintegrasiController,
                hintText: 'Masukkan jumlah',
                label: 'Posyandu Terintegrasi',
              ),
              SizedBox(height: 28.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Lansia',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: lansiaKlpController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah KLP',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: lansiaAnggotaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Anggota',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: lansiaKartuController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah yang Memiliki Kartu Berobat Gratis',
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
              // Action on "Kirim"
            },
          ),
        ),
      ),
    );
  }
}
