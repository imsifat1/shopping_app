import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/responsive.dart';

class FavouriteDeals extends StatelessWidget {
  const FavouriteDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: Column(
        children: [
          Text('Shop By Deals', style: TextStyle(fontSize: 30.sp),),
          SizedBox(height: 10.h,),
          Text('BROWSE FAVORITE DEALS', style: TextStyle(fontSize: 10.sp, color: Colors.grey),),
          SizedBox(height: 10.h,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Expanded(flex: 2, child: Image.asset('images/bigsale1.jpg',  height: isDesktop(context)? size.height / 1.5 : size.height / 3.5, fit: BoxFit.cover,)),
              SizedBox(width: 2.w,),
              Expanded(flex: 2, child: Image.asset('images/bigsale2.jpg', height: isDesktop(context)? size.height / 1.5 : size.height / 3.5, fit: BoxFit.cover,)),
            ],),

        ],
      ),
    );
  }
}
