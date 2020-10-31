import 'package:GubaPortfolio/configure/navigation_service.dart';
import 'package:GubaPortfolio/include/navbar/drawer/drawernav.dart';
import 'package:GubaPortfolio/include/navbar/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:GubaPortfolio/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
