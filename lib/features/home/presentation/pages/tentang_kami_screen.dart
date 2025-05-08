import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TentangKamiScreen extends StatelessWidget {
  const TentangKamiScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                'E-PKK adalah sebuah aplikasi digital yang dikembangkan untuk mendukung kegiatan dan administrasi Tim Penggerak PKK Kabupaten Nganjuk. Aplikasi ini hadir sebagai bagian dari transformasi digital dalam rangka meningkatkan efisiensi, transparansi, dan keterjangkauan data kegiatan PKK di seluruh wilayah Kabupaten Nganjuk.\n\n'
                'Melalui E-PKK, pendataan, pelaporan, monitoring, dan evaluasi program-program PKK dapat dilakukan secara real-time, terintegrasi, dan mudah diakses oleh seluruh kader PKK dari tingkat kabupaten hingga desa.',
                style: TextStyle(fontSize: 14.sp),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
