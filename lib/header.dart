import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/responsive.dart';
import 'nav_item.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Ecommerce Website",
            style: GoogleFonts.reenieBeanie(fontSize: isDesktop(context)? 30 : 18, color: Colors.white),
          ),

          isMobile(context)? Icon(Icons.search, color: Colors.white,) : Container(
            padding: const EdgeInsets.all(10),
            width: size.width / 4,
            height: 35.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(17.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Search'), Icon(Icons.search)],
            ),
          ),

          if (!isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tooltip(
                  message: "Account",
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    color: Colors.white,
                  ),
                ),
                Tooltip(
                  message: "Change Languages",
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.public),
                    color: Colors.white,
                  ),
                ),
                Tooltip(
                  message: "Mail",
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mail),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
