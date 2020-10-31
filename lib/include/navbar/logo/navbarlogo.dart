import 'package:GubaPortfolio/configure/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavbarLogoMob(),
      tablet: NavbarLogoMob(),
      desktop: NavbarLogoDesk(),
    );
  }
}

class NavbarLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 200,
        child: Row(
          children: [
            // Text(
            //   '<',
            //   style: TextStyle(fontSize: 20),
            // ),
            Text(
              'Youssef Guba',
              style: TextStyle(
                  color: primaryColor, fontSize: 20, fontFamily: 'Trispace'),
            ),
            // Text(
            //   '/',
            //   style: TextStyle(color: Colors.grey, fontSize: 20),
            // ),
            // Text(
            //   '>',
            //   style: TextStyle(fontSize: 20),
            // )
          ],
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}

class NavbarLogoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 500,
        child: Row(
          children: [
            // Text(
            //   '<',
            //   style: TextStyle(fontSize: 30),
            // ),
            Text(
              'Youssef Guba',
              style: TextStyle(
                color: primaryColor,
                fontSize: 30,
                fontFamily: 'Trispace',
              ),
            ),
            // Text(
            //   '/',
            //   style: TextStyle(color: Colors.grey, fontSize: 40),
            // ),
            // Text(
            //   '>',
            //   style: TextStyle(fontSize: 30),
            // )
          ],
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}
