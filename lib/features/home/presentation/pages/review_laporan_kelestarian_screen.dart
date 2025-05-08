import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ReviewLaporanKelestarianScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  ReviewLaporanKelestarianScreen({Key? key})
      : data = Map<String, dynamic>.from(Get.arguments ?? {}),
        super(key: key);

  Widget buildRow(String label, String? value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TypographyStyles.bodyCaptionMedium(
              label,
              color: TextColors.grey700,
            ),
          ),
          SizedBox(width: 8.w),
          TypographyStyles.bodyCaptionMedium(
            value ?? '-',
            color: TextColors.grey700,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              // Progress Bar
              Row(
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 2 ? 4.w : 0),
                      decoration: BoxDecoration(
                        color: index == 2 ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  );
                }),
              ),

              SizedBox(height: 32.h),

              // Info Card
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.blue),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TypographyStyles.bodySmallSemiBold(
                              'Yakin datamu sudah benar?',
                            ),
                            SizedBox(height: 4.h),
                            TypographyStyles.bodyCaptionMedium(
                              'Cek lagi yuk! kalo ada kesalahan data kamu bisa edit di halaman ini',
                              color: TextColors.grey600,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/kelestarian1');
                        },
                        child: Text('Edit'),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24.h),

              // Section Judul
              TypographyStyles.bodySmallSemiBold('Detail Laporan'),
              SizedBox(height: 16.h),

              // Section 1
              TypographyStyles.bodyCaptionSemiBold(
                  'Jumlah Rumah yang Memiliki'),
              buildRow('Jamban', data['jamban']?.toString()),
              buildRow('SPAL', data['spal']?.toString()),
              buildRow('Tempat Pembuangan Sampah',
                  data['tempat_pembuangan_sampah']?.toString()),
              buildRow('Jumlah MCK', data['jumlah_mck']?.toString()),

              SizedBox(height: 24.h),

              // Section 2
              TypographyStyles.bodyCaptionSemiBold(
                  'Jumlah KART yang Menggunakan Air'),
              buildRow('PDAM', data['pdam']?.toString()),
              buildRow('Sumur', data['sumur']?.toString()),
              buildRow('Lain - lainnya', data['lainnya']?.toString()),
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
              // Kirim data
            },
          ),
        ),
      ),
    );
  }
}
