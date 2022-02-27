import 'package:flutter/material.dart';

//This Widget makes the App Responsive
class ResponsiveWidget extends StatelessWidget {
  //Different Screeen Sizes
  final Widget smallScreen;
  final Widget mediumScreen;
  final Widget largeScreen;

  const ResponsiveWidget(
      {Key key, this.smallScreen, this.mediumScreen, this.largeScreen})
      : super(key: key);

  //Setting Dimension for different small Screen Sizes
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  //Setting Dimension for different Medium Screen Sizes
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  //Setting Dimension for different large Screen Sizes
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    //double size = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 800) {
          return largeScreen;
        } else if (constraint.maxWidth < 1200 && constraint.maxWidth > 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
