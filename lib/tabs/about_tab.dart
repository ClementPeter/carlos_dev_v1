import 'package:flutter/material.dart';
import 'package:carlos_dev_v1/config/assets.dart';
import 'package:carlos_dev_v1/config/constants.dart';
import 'dart:html' as html;
import 'package:avatar_glow/avatar_glow.dart';

//Contains general User Information
class AboutTab extends StatefulWidget {
  const AboutTab({Key key}) : super(key: key);

  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab>
    with SingleTickerProviderStateMixin {
  //Controls the avatar animation
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
        child: Column(
          children: [
            Hero(
              transitionOnUserGestures: true,
              tag: 'logo',
              child: AvatarGlow(
                endRadius: 120.0,
                glowColor: Colors.green,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0XFFA3CDDA),
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: Image.asset(Assets.carlos).image,
                    radius: 85,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Clement Peter',
              textScaleFactor: 3.0,
            ),
            SizedBox(height: 10),
            Text(
              'Building Real World Applications and Products with various Hardware and Software Technologies',
              textAlign: TextAlign.center,
              //textDirection: TextDire,
              textScaleFactor: 1.5,
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              '',
              textScaleFactor: 1.5,
              //  style: TextSty5le(fontFamily: 'GoogleSansRegular'),
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(
              height: 30,
            ),
            //First Layer---GitHub, Twitter, Medium
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  //hoverColor: Color(0XFFd1e7f9),
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(Assets.gmail),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text('Gmail'),
                  ),
                  onPressed: () {
                    html.window.open(Constants.MAIL, 'MAIL');
                  },
                ),
                //SizedBox(width: 10),
                FlatButton.icon(
                  //hoverColor: Color(0XFFd1e7f9),
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text(
                      'Twitter',
                    ),
                  ),
                  onPressed: () {
                    html.window.open(Constants.PROFILE_TWITTER, 'TWITTER');
                  },
                ),
                //SizedBox(width: 10),
                FlatButton.icon(
                  //hoverColor: Color(0XFFd1e7f9),
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(Assets.medium_light),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text(
                      'Medium',
                    ),
                  ),
                  onPressed: () {
                    html.window.open(Constants.PROFILE_MEDIUM, 'MEDIUM');
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            //Second Layer---HashNode, Instagram, LinkedIn
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  //hoverColor: Color(0XFFd1e7f9),
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(Assets.node),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text(
                      'HashNode',
                    ),
                  ),

                  onPressed: () =>
                      html.window.open(Constants.PROFILE_HASHNODE, 'HASHNODE'),
                ),

                FlatButton.icon(
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(Assets.instagram),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text('Instagram'),
                  ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_INSTAGRAM, 'INSTAGRAM'),
                ),
                //SizedBox(width: 20),
                FlatButton.icon(
                  //hoverColor: Color(0XFFd1e7f9),
                  icon: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: SizedBox(
                      height: 18,
                      width: 18,
                      child: Image.asset(Assets.linkedin),
                    ),
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                    child: Text(
                      'LinkedIn',
                    ),
                  ),
                  onPressed: () =>
                      html.window.open(Constants.PROFILE_LINKEDIN, 'LINKEDIN'),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Text(
                'Built with Flutter 💙',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
