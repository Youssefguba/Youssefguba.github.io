import 'package:GubaPortfolio/configure/centeredview.dart';
import 'package:GubaPortfolio/include/homepage/homemain.dart';
import 'package:GubaPortfolio/include/navbar/drawer/drawernav.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ScreenTypeLayout(
                mobile: CenteredViewMob(child: HomeMobile()),
                desktop: CenteredViewDesk(child: HomeDesktop()),
                tablet: CenteredViewTab(child: HomeTab()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
