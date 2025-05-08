import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KelestarianLingkungan1Screen extends StatelessWidget {
  const KelestarianLingkungan1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final jambanController = TextEditingController();
    final spalController = TextEditingController();
    final sampahController = TextEditingController();
    final mckController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Kelestarian Lingkungan Hidup',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Progress Indicator
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
                'Jumlah Rumah yang Memiliki',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: jambanController,
                hintText: 'Masukkan jumlah',
                label: 'Jamban',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: spalController,
                hintText: 'Masukkan jumlah',
                label: 'SPAL',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: sampahController,
                hintText: 'Masukkan jumlah',
                label: 'Tempat Pembuangan Sampah',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: mckController,
                hintText: 'Masukkan jumlah',
                label: 'Jumlah MCK',
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
              Get.toNamed('/kelestarian2', arguments: {
                'jamban': jambanController.text,
                'spal': spalController.text,
                'tempat_pembuangan_sampah': sampahController.text,
                'jumlah_mck': mckController.text,
              });
            },
          ),
        ),
      ),
    );
  }
}
