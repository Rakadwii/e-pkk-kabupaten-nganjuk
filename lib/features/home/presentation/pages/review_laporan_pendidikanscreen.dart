// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:e_pkk_nganjuk/_core/component/appbar/custome_appbar.dart';
// import 'package:e_pkk_nganjuk/_core/component/button/button_fill.dart';
// import 'package:e_pkk_nganjuk/commons/constants/colors.dart';
// import 'package:e_pkk_nganjuk/commons/constants/typography.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class ReviewLaporanScreen extends StatelessWidget {
//   final Map<String, dynamic> data;

//   const ReviewLaporanScreen({super.key, required this.data});

//   Widget buildRow(String label, String? value) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 8.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Text(
//               label,
//               style: TypographyStyles.bodyCaptionMedium(color: TextColors.grey900),
//             ),
//           ),
//           Text(
//             value ?? '-',
//             style: TypographyStyles.bodyCaptionMedium(color: TextColors.grey700),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBarSecondary(
//         title: 'Review Laporan',
//         //subtitle: 'Langkah 5 dari 5',
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: List.generate(5, (index) {
//                   return Expanded(
//                     child: Container(
//                       height: 4.h,
//                       margin: EdgeInsets.only(right: index < 4 ? 4.w : 0),
//                       decoration: BoxDecoration(
//                         color: index == 4 ? Colors.blue : Colors.grey[300],
//                         borderRadius: BorderRadius.circular(4.r),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//               SizedBox(height: 32.h),
//               Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
//                 elevation: 2,
//                 child: Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Row(
//                     children: [
//                       Icon(Icons.search, color: Colors.blue),
//                       SizedBox(width: 10.w),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Yakin datamu sudah benar?', style: TypographyStyles.bodySmallSemiBold()),
//                             Text(
//                               'Cek lagi yah! klo ada kesalahan datamu bisa edit di halaman ini',
//                               style: TypographyStyles.bodyCaptionMedium(color: TextColors.grey600),
//                             ),
//                           ],
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           // Aksi edit
//                         },
//                         child: Text('Edit'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 24.h),
//               Text('Detail Laporan', style: TypographyStyles.bodySmallSemiBold()),
//               SizedBox(height: 12.h),
//               ...data.entries.map((e) => buildRow(e.key, e.value?.toString())).toList(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//         child: ZoomTapAnimation(
//           child: ButtonFill(
//             text: 'Kirim',
//             textColor: Colors.white,
//             onPressed: () {
//               // Aksi kirim data
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
