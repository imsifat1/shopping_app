import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/responsive.dart';
import '../header.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset('images/slider.jpg', height: isDesktop(context)? size.height / 1.2 : size.height / 2.5, width: size.width, fit: BoxFit.cover,),
        const Align(
            alignment: Alignment.topCenter,
            child: Header()),
        Positioned(
          bottom: size.height / 2.2,
          left: size.width / 2.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Checkout Now', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: isDesktop(context) ?50.sp : 20.sp)),
              SizedBox(height: 10.h,),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 11,
                  child: Container(
                    height: isDesktop(context) ? 50.h : 20.h,width: isDesktop(context)? 50.w : 20.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r)
                    ),
                    child: Center(child: Text('Shop Now', style: TextStyle(color: Colors.black),)),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
