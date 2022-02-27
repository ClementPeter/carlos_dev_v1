import 'package:flutter/material.dart';
import 'package:carlos_dev_v1/pages/home_page.dart';
//import 'package:pages/home_page.dart';
import 'package:carlos_dev_v1/widgets/theme_inherited_widget.dart';
//lib\widgets\theme_inherited_widget.dart
import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: CarlosdevV1(),
    );
  }
}

class CarlosdevV1 extends StatelessWidget {
  const CarlosdevV1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carlos_dev_v1',
      debugShowCheckedModeBanner: false,
      theme: ThemeSwitcher.of(BuildContext, context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: Scaffold(
        body: HomePage(),
      )
    );
  }
}
