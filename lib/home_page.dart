import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home/category_section.dart';
import 'home/favorite_deals.dart';
import 'home/slider_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderPage(),
            CategorySection(),
            FavouriteDeals(),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
