import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PendidikanKetrampilan3Screen extends StatelessWidget {
  const PendidikanKetrampilan3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final klpController = TextEditingController();
    final ibuPesertaController = TextEditingController();
    final apeController = TextEditingController();
    final kelSimulasiController = TextEditingController();
    final tutorKFController = TextEditingController();
    final tutorPaudController = TextEditingController();
    final kaderBKPController = TextEditingController();
    final koperasiController = TextEditingController();
    final ketrampilanController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Pendidikan & Keterampilan',
        //subtitle: 'Langkah 3 dari 5',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 4 ? 4.w : 0),
                      decoration: BoxDecoration(
                        color: index <= 2 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32.h),
              TypographyStyles.bodyCaptionSemiBold(
                'BKP',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: klpController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah KLP',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: ibuPesertaController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah ibu peserta',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: apeController,
                hintText: 'Masukkan jumlah',
                label: 'jumlah APE (SET)',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: kelSimulasiController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah Kel. Simulasi',
              ),
              SizedBox(height: 28.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Kader Khusus',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Tutor',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: tutorKFController,
                hintText: 'Masukkan jumlah',
                label: 'KF',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: tutorPaudController,
                hintText: 'Masukkan jumlah',
                label: 'Paud / sejenis',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: kaderBKPController,
                hintText: 'Masukkan jumlah',
                label: 'BKP',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: koperasiController,
                hintText: 'Masukkan jumlah',
                label: 'Koperasi',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: ketrampilanController,
                hintText: 'Masukkan jumlah',
                label: 'Ketrampilan',
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
              Navigator.pushNamed(context, '/pendidikan4');
            },
          ),
        ),
      ),
    );
  }
}
