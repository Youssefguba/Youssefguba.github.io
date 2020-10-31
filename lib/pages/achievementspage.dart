import 'package:GubaPortfolio/include/CenteringOfPages/achievement.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchievementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AchievementDesk(),
      tablet: AchievementTab(),
      mobile: AchievementMob(),
    );
  }
}
