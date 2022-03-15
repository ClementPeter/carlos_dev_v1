import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carlos_dev_v1/config/assets.dart';
import 'package:carlos_dev_v1/tabs/about_tab.dart';
//import 'package:carlos_dev_v1/tabs/blog_tab.dart';
import 'package:carlos_dev_v1/tabs/projects_tab.dart';
import 'package:carlos_dev_v1/widgets/theme_inherited_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Bottom Nav bar Selction
  int _selectedIndex = 0;
  //List of Tab Pages assigned to each BottomNavBar
  List<Widget> tabWidget = [
    AboutTab(),
    //BlogTab(),
    ProjectTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      // IconButton(
      //   icon: ThemeSwitcher.of(BuildContext, context).isDarkModeOn
      //       ? Image.asset(Assets.moon, height: 30, width: 30)
      //       : Image.asset(Assets.sun, height: 50, width: 50),
      //   onPressed: () =>
      //       ThemeSwitcher.of(BuildContext, context).switchDarkMode(),
      // ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Padding(padding: const EdgeInsets.only(top: 20.0, right: 20.0), ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Text(
                      ">_carlos_dev",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, right: 20.0),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: IconButton(
                      icon: ThemeSwitcher.of(BuildContext, context).isDarkModeOn
                          ? Image.asset(Assets.moon, height: 25, width: 25)
                          : Image.asset(Assets.sun, height: 35, width: 35),
                      onPressed: () => ThemeSwitcher.of(BuildContext, context)
                          .switchDarkMode(),
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: tabWidget.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: Image.asset(Assets.userInactive, height: 25, width: 25),
            // activeIcon: Image.asset(Assets.userActive, height: 25, width: 25),
            label: 'About Me',
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            //icon: Image.asset(Assets.projects, height: 25, width: 25),
            icon: Icon(Icons.mobile_screen_share),
            label: 'Project',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(
          () => _selectedIndex = index,
        ),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
