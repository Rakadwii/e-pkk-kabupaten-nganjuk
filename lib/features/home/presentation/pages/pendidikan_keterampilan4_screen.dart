import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/_core/component/form/input_form_field.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PendidikanKetrampilan4Screen extends StatelessWidget {
  const PendidikanKetrampilan4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final lp3Controller = TextEditingController();
    final tp3Controller = TextEditingController();
    final damasController = TextEditingController();

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
                        color: index <= 3 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 32.h),
              TypographyStyles.bodyCaptionSemiBold(
                'Jumlah Kader yang Sudah Dilatih',
                color: TextColors.grey900,
              ),
              SizedBox(height: 12.h),
              InputFormField(
                controller: lp3Controller,
                hintText: 'Masukkan jumlah',
                label: 'LP3PKK',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: tp3Controller,
                hintText: 'Masukkan jumlah',
                label: 'TP3PKK',
              ),
              SizedBox(height: 20.h),
              InputFormField(
                controller: damasController,
                hintText: 'Masukkan jumlah',
                label: 'DAMAS PKK',
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
              //Navigator.pushNamed(context, '/pendidikan3');
            },
          ),
        ),
      ),
    );
  }
}
