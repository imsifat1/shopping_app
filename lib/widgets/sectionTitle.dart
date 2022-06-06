import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget sectionTitle(String titel, subtitle) {
  return Column(
    children: [
      Text(titel, style: TextStyle(fontSize: 30.sp),),
      SizedBox(height: 10.h,),
      Text(subtitle, style: TextStyle(fontSize: 10.sp, color: Colors.grey),),
      SizedBox(height: 10.h,),
    ],
  );
}