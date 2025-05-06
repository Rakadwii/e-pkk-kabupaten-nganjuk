import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ReviewLaporanPendidikanScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  ReviewLaporanPendidikanScreen({Key? key})
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
        title: 'Review Laporan',
        //subtitle: 'Langkah 5 dari 5',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar
              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.only(right: index < 4 ? 4.w : 0),
                      decoration: BoxDecoration(
                        color: index == 4 ? Colors.blue : Colors.grey[300],
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
                                'Yakin datamu sudah benar?'),
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
                          Get.toNamed('/pendidikan1');
                        },
                        child: Text('Edit'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),

              TypographyStyles.bodySmallSemiBold('Detail Laporan'),
              SizedBox(height: 16.h),

              buildRow('Jumlah warga yang masih buta huruf',
                  data['jumlahKelompokKerja']?.toString()),

              // Paket A
              TypographyStyles.bodyCaptionSemiBold('Paket A'),
              buildRow('Jumlah Belajar Belajar Paket A',
                  data['paketA1']?.toString()),
              buildRow(
                  'Jumlah Warga Belajar Paket A', data['paketA2']?.toString()),

              // Paket B
              TypographyStyles.bodyCaptionSemiBold('Paket B'),
              buildRow('Jumlah Kelompok Belajar Paket B',
                  data['paketB1']?.toString()),
              buildRow(
                  'Jumlah Warga Belajar Paket B', data['paketB2']?.toString()),

              // Paket C
              TypographyStyles.bodyCaptionSemiBold('Paket C'),
              buildRow('Kel. Belajar', data['paketC1']?.toString()),
              buildRow('Warga Belajar', data['paketC2']?.toString()),

              // Paket KF
              TypographyStyles.bodyCaptionSemiBold('Paket KF'),
              buildRow('Kell. Belajar', data['paketKF1']?.toString()),
              buildRow('Wargaa Belajar', data['paketKF2']?.toString()),

              buildRow('Paud / sejenis', data['paudSejenis']?.toString()),
              buildRow('Jumlah taman bacaan / perpustakaan',
                  data['tamanBacaan']?.toString()),

              // BKP
              TypographyStyles.bodyCaptionSemiBold('BKP'),
              buildRow('Jumlah KLP', data['bkpKlp']?.toString()),
              buildRow('Jumlah Ibu peserta', data['bkpPeserta']?.toString()),
              buildRow('Jumlah APE (SET)', data['bkpApe']?.toString()),
              buildRow('Jumlah Kel. Simulasi', data['bkpSimulasi']?.toString()),

              // Kader Khusus
              TypographyStyles.bodyCaptionSemiBold('Kader Khusus'),
              buildRow('Tutor KF', data['kaderTutorKf']?.toString()),
              buildRow(
                  'Tutor Paud / sejenis', data['kaderTutorPaud']?.toString()),
              buildRow('Tutor BKP', data['kaderTutorBkp']?.toString()),
              buildRow(
                  'Tutor Koperasi', data['kaderTutorKoperasi']?.toString()),
              buildRow('Tutor Keterampilan',
                  data['kaderTutorKeterampilan']?.toString()),

              // Jumlah Kader yang Sudah Dilatih
              TypographyStyles.bodyCaptionSemiBold(
                  'Jumlah Kader yang Sudah Dilatih'),
              buildRow('LP3PKK', data['kaderLp3pkk']?.toString()),
              buildRow('TP3PKK', data['kaderTp3pkk']?.toString()),
              buildRow('DAMAS PKK', data['kaderDamas']?.toString()),
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
