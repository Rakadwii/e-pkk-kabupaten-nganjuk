import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Pangan2Screen extends StatelessWidget {
  const Pangan2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final peternakanController = TextEditingController();
    final perikananController = TextEditingController();
    final warungHidupController = TextEditingController();
    final lumbungHidupController = TextEditingController();
    final togaController = TextEditingController();
    final tanamanKerasController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSecondary(
        title: 'Pangan',
        //subtitle: 'Langkah 2 dari 3',
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
                        color: index <= 1 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32.h),

              TypographyStyles.bodyCaptionSemiBold(
                'Pemanfaatan Pekarangan / Hatinya PKK',
                color: TextColors.grey900,
              ),
              SizedBox(height: 24.h),

              InputFormField(
                controller: peternakanController,
                hintText: 'Masukkan jumlah',
                label: 'Peternakan',
              ),
              SizedBox(height: 20.h),

              InputFormField(
                controller: perikananController,
                hintText: 'Masukkan jumlah',
                label: 'Perikanan',
              ),
              SizedBox(height: 20.h),

              InputFormField(
                controller: warungHidupController,
                hintText: 'Masukkan jumlah',
                label: 'Warung Hidup',
              ),
              SizedBox(height: 20.h),

              InputFormField(
                controller: lumbungHidupController,
                hintText: 'Masukkan jumlah',
                label: 'Lumbung Hidup',
              ),
              SizedBox(height: 20.h),

              InputFormField(
                controller: togaController,
                hintText: 'Masukkan jumlah',
                label: 'TOGA',
              ),
              SizedBox(height: 20.h),

              InputFormField(
                controller: tanamanKerasController,
                hintText: 'Masukkan jumlah',
                label: 'Tanaman Keras',
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
              Navigator.pushNamed(context, '/panganReview');
            },
          ),
        ),
      ),
    );
  }
}
