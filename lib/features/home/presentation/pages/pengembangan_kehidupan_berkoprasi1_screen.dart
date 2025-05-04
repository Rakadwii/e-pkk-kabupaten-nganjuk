import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KehidupanBerkoperasi1Screen extends StatelessWidget {
  const KehidupanBerkoperasi1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final permulaKelompokController = TextEditingController();
    final permulaPesertaController = TextEditingController();
    final madyaKelompokController = TextEditingController();
    final madyaPesertaController = TextEditingController();
    final utamaKelompokController = TextEditingController();
    final utamaPesertaController = TextEditingController();
    final mandiriKelompokController = TextEditingController();
    final mandiriPesertaController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Pengembangan Kehidupan Berkoperasi',
        //subtitle: 'Langkah 1 dari 3',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar
              Row(
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 2 ? 4.w : 0),
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
                'Prakoperasi / Usaha Bersama / UP2K PKK',
                color: TextColors.grey900,
              ),
              SizedBox(height: 24.h),

              // Permula
              TypographyStyles.bodyCaptionSemiBold('Permula',
                  color: TextColors.grey900),
              SizedBox(height: 12.h),
              InputFormField(
                controller: permulaKelompokController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Kelompok',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: permulaPesertaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Peserta',
              ),
              SizedBox(height: 28.h),

              // Madya
              TypographyStyles.bodyCaptionSemiBold('Madya',
                  color: TextColors.grey900),
              SizedBox(height: 12.h),
              InputFormField(
                controller: madyaKelompokController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Kelompok',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: madyaPesertaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Peserta',
              ),
              SizedBox(height: 28.h),

              // Utama
              TypographyStyles.bodyCaptionSemiBold('Utama',
                  color: TextColors.grey900),
              SizedBox(height: 12.h),
              InputFormField(
                controller: utamaKelompokController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Kelompok',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: utamaPesertaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Peserta',
              ),
              SizedBox(height: 28.h),

              // Mandiri
              TypographyStyles.bodyCaptionSemiBold('Mandiri',
                  color: TextColors.grey900),
              SizedBox(height: 12.h),
              InputFormField(
                controller: mandiriKelompokController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Kelompok',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: mandiriPesertaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Peserta',
              ),
              SizedBox(height: 28.h),
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
              Navigator.pushNamed(context, '/pengembangan2');
            },
          ),
        ),
      ),
    );
  }
}
