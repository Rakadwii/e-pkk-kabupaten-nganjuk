import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Pangan1Screen extends StatelessWidget {
  const Pangan1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final berasController = TextEditingController();
    final nonBerasController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Pangan',
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
                'Makanan Pokok',
                color: TextColors.grey900,
              ),
              SizedBox(height: 24.h),

              InputFormField(
                controller: berasController,
                hintText: 'Masukkan jumlah',
                label: 'Beras',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: nonBerasController,
                hintText: 'Masukkan jumlah',
                label: 'Non Beras',
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
              Get.toNamed('/pangan2', arguments: {
                'beras': berasController.text,
                'nonBeras': nonBerasController.text,
              });
            },
          ),
        ),
      ),
    );
  }
}
