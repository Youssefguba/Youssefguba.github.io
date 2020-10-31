import 'package:GubaPortfolio/include/Rows/experiencemain.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ExpYearsDesk(),
      tablet: ExpYearsTab(),
      mobile: ExpYearsMob(),
    );
  }
}
