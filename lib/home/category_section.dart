import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.width / 2.9,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          category_item(size, 'Smart Watch', 'images/smartwatch.png'),
          category_item(size, 'Headphones', 'images/headphone.png'),
          category_item(size, 'Charger', 'images/Charger.png'),
          category_item(size, 'Mobile Phones', 'images/mobile.png'),
        ],
      ),
    );
  }
}

category_item(Size size, String title, imageLocation){
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(imageLocation, width: size.width / 3, height: size.height / 3,),
      Positioned(

        child: MaterialButton(
          padding: EdgeInsets.all(20.h),
          hoverColor: Colors.red,
          color: Colors.white,
          elevation: 11,
          child: Text(title),
          onPressed: (){},
        ),
      )
    ],
  );
}