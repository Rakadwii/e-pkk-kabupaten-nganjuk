import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PendidikanKetrampilan2Screen extends StatelessWidget {
  const PendidikanKetrampilan2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final paketCKelController = TextEditingController();
    final paketCWargaController = TextEditingController();
    final paketKFKelController = TextEditingController();
    final paketKFWargaController = TextEditingController();
    final paudController = TextEditingController();
    final tamanBacaanController = TextEditingController();

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
                        color: index <= 1 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32.h),

              TypographyStyles.bodyCaptionSemiBold(
                'Paket C',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: paketCKelController,
                hintText: 'Masukkan jumlah',
                label: 'Kel. Belajar',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: paketCWargaController,
                hintText: 'Masukkan jumlah',
                label: 'Warga Belajar',
              ),

              SizedBox(height: 28.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Paket KF',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: paketKFKelController,
                hintText: 'Masukkan jumlah',
                label: 'Kell. Belajar',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: paketKFWargaController,
                hintText: 'Masukkan jumlah',
                label: 'Wargaa Belajar',
              ),

              SizedBox(height: 28.h),
              InputFormField(
                controller: paudController,
                hintText: 'Masukkan jumlah',
                label: 'Paud / sejenis',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: tamanBacaanController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah taman bacaan / perpustakaan',
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
              final previousData = Get.arguments ?? {};

              Get.toNamed('/pendidikan3', arguments: {
                ...previousData,
                'paketC1': paketCKelController.text,
                'paketC2': paketCWargaController.text,
                'paketKF1': paketKFKelController.text,
                'paketKF2': paketKFWargaController.text,
                'paudSejenis': paudController.text,
                'tamanBacaan': tamanBacaanController.text,
              });
            },
          ),
        ),
      ),
    );
  }
}
