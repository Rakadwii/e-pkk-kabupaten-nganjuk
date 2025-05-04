import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PendidikanKetrampilan1Screen extends StatelessWidget {
  const PendidikanKetrampilan1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final butaHurufController = TextEditingController();
    final paketAKelController = TextEditingController();
    final paketAWargaController = TextEditingController();
    final paketBKelController = TextEditingController();
    final paketBWargaController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Pendidikan & Keterampilan',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Indikator langkah
              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 4 ? 4.w : 0),
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Jumlah Kelompok Belajar',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: butaHurufController,
                hintText: 'Masukkan jumlah warga',
                label: 'Jumlah warga yang masih buta huruf',
              ),
              SizedBox(height: 28.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Paket A',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: paketAKelController,
                hintText: 'Masukkan jumlah kelompok',
                label: 'Jumlah Kelompok Belajar Paket A',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: paketAWargaController,
                hintText: 'Masukkan jumlah warga',
                label: 'Jumlah Warga Belajar Paket A',
              ),
              SizedBox(height: 28.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Paket B',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: paketBKelController,
                hintText: 'Masukkan jumlah kelompok',
                label: 'Jumlah Kelompok Belajar Paket B',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: paketBWargaController,
                hintText: 'Masukkan jumlah warga',
                label: 'Jumlah Warga Belajar Paket B',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: ZoomTapAnimation(
          child: ButtonFill(
            text: 'Lanjut',
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/pendidikan2');
            },
          ),
        ),
      ),
    );
  }
}
