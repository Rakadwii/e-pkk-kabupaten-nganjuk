import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KelestarianLingkungan2Screen extends StatelessWidget {
  const KelestarianLingkungan2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final pdamController = TextEditingController();
    final sumurController = TextEditingController();
    final lainnyaController = TextEditingController();

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
              // Step Progress Bar
              Row(
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 2 ? 4.w : 0),
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
                'Jumlah KART yang Menggunakan Air',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: pdamController,
                hintText: 'Masukkan jumlah',
                label: 'PDAM',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: sumurController,
                hintText: 'Masukkan jumlah',
                label: 'Sumur',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: lainnyaController,
                hintText: 'Masukkan jumlah',
                label: 'Lain - lainnya',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: ZoomTapAnimation(
          child: ButtonFill(
            text: 'Review',
            textColor: Colors.white,
            onPressed: () {
              final previousData = Get.arguments ?? {};

              final newData = {
                'pdam': pdamController.text,
                'sumur': sumurController.text,
                'lainnya': lainnyaController.text,
              };

              final combinedData = {
                ...previousData,
                ...newData,
              };

              Get.toNamed('/review_kelestarian', arguments: combinedData);
            },
          ),
        ),
      ),
    );
  }
}
