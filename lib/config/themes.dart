import 'package:flutter/material.dart';

//Contains the Dark and Light Mode Theme Properties
//24262c
darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Color(0xff24262c),
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
          buttonColor: Colors.blue,
          splashColor: Colors.black,
          hoverColor: Colors.white38,
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Color(0xFFe8edef),
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Color(0xFFe8edef),
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.light(),
          buttonColor: Colors.blue,
          splashColor: Colors.white,
          hoverColor: Color(0XFFd1e7f9),
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
