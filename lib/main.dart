import 'package:GubaPortfolio/pages/layoutpage.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/widgets.dart';
import 'configure/colors.dart';
import 'configure/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  setupLocator();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  const MyApp({Key key, this.savedThemeMode}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        backgroundColor: darkPrimaryColor,
        scaffoldBackgroundColor: darkPrimaryColor,
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Youssef Guba',
        theme: theme,
        home: LayoutTemplate(),
      ),
    );
  }
}
