import 'package:flutter/material.dart';

class ThemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;

  const ThemeSwitcher({
    Key key,
    @required this.data,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static _ThemeSwitcherWidgetState of(buildContext, context) {
    return (context.dependOnInheritedWidgetOfExactType<ThemeSwitcher>()
            as ThemeSwitcher)
        .data;
  }

  @override
  bool updateShouldNotify(ThemeSwitcher old) {
    // TODO: implement updateShouldNotify
    return this != old;
  }
}

class ThemeSwitcherWidget extends StatefulWidget {
  final Widget
      child; // child to which this boolean variable  change. This will be our app in this case
  final bool initialDarkModeOn; // this is the initial state of the variable

  const ThemeSwitcherWidget({Key key, this.initialDarkModeOn, this.child})
      : assert(initialDarkModeOn != null),
        assert(child != null),
        super(key: key);
  @override
  _ThemeSwitcherWidgetState createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  bool isDarkModeOn;

  //method used to toggle dark mode during the runtime of the app
  void switchDarkMode() {
    setState(() {
      isDarkModeOn = !isDarkModeOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    isDarkModeOn = isDarkModeOn ?? widget.initialDarkModeOn;
    return ThemeSwitcher(
      data: this,
      child: widget.child,
    );
  }
}
