import 'package:carlos_dev_v1/config/assets.dart';
import 'package:carlos_dev_v1/config/constants.dart';
import 'package:carlos_dev_v1/widgets/project_card.dart';
import 'package:flutter/material.dart';
import 'package:carlos_dev_v1/widgets/responsive_widget.dart';
//import 'package:carlos_dev_v1/config/project.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:html' as html;

class ProjectTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100.0,
              child: Hero(
                transitionOnUserGestures: true,
                tag: 'logo',
                child: AvatarGlow(
                  endRadius: 80.0,
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
                      radius: 40.0,
                      //child:
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //html.window.open(Constants.PROFILE_GITHUB, 'GITHUB');
                ProjectCards(
                  assetImage: Image.asset(Assets.hackster),
                  projectTopic: "Hardware",
                  projectDescription: "Building Electronics stuff",
                  link: "${Constants.PROFILE_HACKSTER}",
                ),
                ProjectCards(
                  assetImage: Image.asset(Assets.github),
                  projectTopic: "Software",
                  projectDescription:
                      "Mobile, Web and Desktops Apps using Flutter",
                  link: "${Constants.PROFILE_GITHUB}",
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //html.window.open(Constants.PROFILE_GITHUB, 'GITHUB');
                //Design Tab
                ProjectCards(
                  assetImage: Image.asset(Assets.behance),
                  projectTopic: "Design",
                  projectDescription:
                      " Designing UI/UX Interfaces for Mobile and Web",
                  link: "${Constants.PROFILE_BEHANCE}",
                ),
                //Design Tab
                ProjectCards(
                  assetImage: Image.asset(Assets.node),
                  projectTopic: "Blog",
                  projectDescription: "Writing Tech walk-throughs",
                  link: "${Constants.PROFILE_HASHNODE}",
                ),
              ],
            ),
            //Text('Technologies I fvck around with 😒:'),
            // Padding(
            //   padding: const EdgeInsets.only(top: 150.0, bottom: 10.0),
            //   child: Text('Built with Flutter 💙',

            //       //textScaleFactor: 1.5,
            //       style: Theme.of(context).textTheme.caption
            //       // style: TextStyle(
            //       //     fontSize: 15.0,
            //       //     color: Colors.grey //fontWeight: FontWeight.

            //       //     )
            //       // Padding(
            //       ),
            // ),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(50.0)),
                Text(
                  'Technologies I work with',
                  textAlign: TextAlign.center,
                  //textDirection: TextDire,
                  textScaleFactor: 1.5,
                  style: Theme.of(context).textTheme.caption,
                ),
                // Text(
                //   'Technologies I work with',
                //   style: TextStyle(
                //       textAlign: TextAlign.center,
                //     //textDirection: TextDire,
                //     textScaleFactor: 1.5,
                //     style: Theme.of(context).textTheme.caption,
                //   ),
                // ),

                Column(
                  children: [
                    SizedBox(height: 20.0),

                    //First Layer---GitHub, Twitter, Medium
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.dart),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text('Dart'),
                          ),
                          onPressed: () {
                            html.window.open(Constants.DART, 'DART');
                          },
                        ),
                        //SizedBox(width: 10),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.flutter),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text(
                              'Flutter',
                            ),
                          ),
                          onPressed: () {
                            html.window.open(Constants.FLUTTER, 'FLUTTER');
                          },
                        ),
                        SizedBox(width: 10),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(Assets.firebase),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text(
                              'Firebase',
                            ),
                          ),
                          onPressed: () {
                            html.window.open(Constants.FIREBASE, 'Firebase');
                          },
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton.icon(
                              //hoverColor: Color(0XFFd1e7f9),
                              icon: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0, top: 10.0, bottom: 10.0),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(Assets.github),
                                ),
                              ),
                              label: Padding(
                                padding: EdgeInsets.only(
                                    right: 10.0, top: 10.0, bottom: 10.0),
                                child: Text('GitHub'),
                              ),
                              onPressed: () {
                                html.window
                                    .open(Constants.PROFILE_GITHUB, 'GITHUB');
                              },
                            ),
                            // FlatButton.icon(
                            //   //hoverColor: Color(0XFFd1e7f9),
                            //   icon: Padding(
                            //     padding: EdgeInsets.only(
                            //         left: 10.0, top: 10.0, bottom: 10.0),
                            //     child: SizedBox(
                            //       height: 20,
                            //       width: 20,
                            //       child: Image.asset(Assets.espressif),
                            //     ),
                            //   ),
                            //   label: Padding(
                            //     padding: EdgeInsets.only(
                            //         right: 10.0, top: 8, bottom: 8),
                            //     child: Text(
                            //       'Espresiff',
                            //     ),
                            //   ),

                            //   onPressed: () => html.window
                            //       .open(Constants.ESPRESSIF, 'ESPRESSIF'),
                            // ),
                            // FlatButton.icon(
                            //   icon: Padding(
                            //     padding: EdgeInsets.only(
                            //       left: 10.0,
                            //       top: 10.0,
                            //       bottom: 10.0,
                            //     ),
                            //     child: SizedBox(
                            //       height: 24,
                            //       width: 24,
                            //       child: Image.asset(Assets.arduino),
                            //     ),
                            //   ),
                            //   label: Padding(
                            //     padding: EdgeInsets.only(
                            //         right: 10.0, top: 10.0, bottom: 10.0),
                            //     child: Text('Arduino'),
                            //   ),
                            //   onPressed: () => html.window
                            //       .open(Constants.ARDUINO, 'ARDUINO'),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    //2ND Layer
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.espressif),
                            ),
                          ),
                          label: Padding(
                            padding:
                                EdgeInsets.only(right: 10.0, top: 8, bottom: 8),
                            child: Text(
                              ' Espresiff Systems ',
                            ),
                          ),

                          onPressed: () => html.window
                              .open(Constants.ESPRESSIF, 'ESPRESSIF'),
                        ),
                        FlatButton.icon(
                          icon: Padding(
                            padding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: SizedBox(
                              height: 24,
                              width: 24,
                              child: Image.asset(Assets.arduino),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text('Arduino'),
                          ),
                          onPressed: () =>
                              html.window.open(Constants.ARDUINO, 'ARDUINO'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    //3RD Layer
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          icon: Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 22,
                              width: 22,
                              child: Image.asset(Assets.xd),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text('Adobe XD'),
                          ),
                          onPressed: () => html.window.open(Constants.XD, 'XD'),
                        ),
                        FlatButton.icon(
                          icon: Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 22,
                              width: 22,
                              child: Image.asset(Assets.figma),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text('Figma'),
                          ),
                          onPressed: () =>
                              html.window.open(Constants.FIGMA, 'FIGMA'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, bottom: 10.0),
                      child: Text(
                        'Built with Flutter 💙',
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // mediumScreen: SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       SizedBox(
      //         height: 100.0,
      //         child: Hero(
      //           tag: 'logo',
      //           child: AvatarGlow(
      //             endRadius: 80.0,
      //             glowColor: Colors.green,
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 border: Border.all(
      //                   color: Color(0XFFA3CDDA),
      //                   width: 3.0,
      //                   style: BorderStyle.solid,
      //                 ),
      //               ),
      //               child: CircleAvatar(
      //                 backgroundImage: Image.asset(Assets.carlos).image,
      //                 radius: 40.0,
      //                 //child:
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 50.0),
      //       ProjectCards(
      //         assetImage: Image.asset(Assets.hackster),
      //         projectTopic: "Hardware",
      //         projectDescription: "Building Electronics stuff",
      //         link: "${Constants.PROFILE_HACKSTER}",
      //       ),
      //       SizedBox(height: 30.0),
      //       ProjectCards(
      //         assetImage: Image.asset(Assets.github),
      //         projectTopic: "Software",
      //         projectDescription:
      //             "Mobile, Web and Desktops Apps using Flutter/Dart",
      //         link: "${Constants.PROFILE_GITHUB}",
      //       ),
      //       SizedBox(height: 30.0),
      //       ProjectCards(
      //         assetImage: Image.asset(Assets.behance),
      //         projectTopic: "Design",
      //         projectDescription:
      //             "Designing UI/UX Interfaces for Mobile and Web",
      //         link: "${Constants.PROFILE_BEHANCE}",
      //       ),
      //       SizedBox(height: 30.0),
      //       //Design Tab
      //       ProjectCards(
      //         assetImage: Image.asset(Assets.node),
      //         projectTopic: "Blog",
      //         projectDescription: "Writing Tech walk-throughs",
      //         link: "${Constants.PROFILE_HASHNODE}",
      //       ),

      //       SizedBox(height: 30.0),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //mainAxisAlignment: MainAxisAlignment.start,

      //         children: [
      //           Padding(padding: EdgeInsets.all(20.0)),
      //           Center(
      //             child: Text(
      //               'Technologies I work with',
      //               textAlign: TextAlign.center,
      //               //textDirection: TextDire,
      //               textScaleFactor: 1.5,
      //               style: Theme.of(context).textTheme.caption,
      //             ),
      //           ),
      //           Column(
      //             children: [
      //               SizedBox(height: 20),
      //               //First Layer---GitHub, Twitter, Medium
      //               Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   FlatButton.icon(
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 20,
      //                         width: 20,
      //                         child: Image.asset(Assets.dart),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text('Dart'),
      //                     ),
      //                     onPressed: () {
      //                       html.window.open(Constants.DART, 'DART');
      //                     },
      //                   ),
      //                   FlatButton.icon(
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 20,
      //                         width: 20,
      //                         child: Image.asset(Assets.flutter),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text(
      //                         'Flutter',
      //                       ),
      //                     ),
      //                     onPressed: () {
      //                       html.window.open(Constants.FLUTTER, 'FLUTTER');
      //                     },
      //                   ),
      //                   //SizedBox(width: 10),
      //                   FlatButton.icon(
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 25,
      //                         width: 25,
      //                         child: Image.asset(Assets.firebase),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text(
      //                         'Firebase',
      //                       ),
      //                     ),
      //                     onPressed: () {
      //                       html.window.open(Constants.FIREBASE, 'Firebase');
      //                     },
      //                   ),
      //                        FlatButton.icon(
      //                     //hoverColor: Color(0XFFd1e7f9),
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 20,
      //                         width: 20,
      //                         child: Image.asset(Assets.github),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text('GitHub'),
      //                     ),
      //                     onPressed: () {
      //                       html.window
      //                           .open(Constants.PROFILE_GITHUB, 'GITHUB');
      //                     },
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 5),
      //               //Second Layer---HashNode, Instagram, LinkedIn
      //               Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [

      //                   FlatButton.icon(
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 20,
      //                         width: 20,
      //                         child: Image.asset(Assets.espressif),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text(
      //                         'Espressif ',
      //                       ),
      //                     ),
      //                     // onPressed: () {
      //                     //   html.window.open(Constants.PROFILE_HASHNODE, 'HASHNODE');
      //                     // },
      //                     onPressed: () => html.window
      //                         .open(Constants.ESPRESSIF, 'ESPRESSIF'),
      //                   ),
      //                   //SizedBox(width: 20),
      //                   FlatButton.icon(
      //                     //hoverColor: Color(0XFFd1e7f9),
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
      //                       child: SizedBox(
      //                         height: 20,
      //                         width: 20,
      //                         child: Image.asset(Assets.arduino),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text('Arduino'),
      //                     ),
      //                     onPressed: () =>
      //                         html.window.open(Constants.ARDUINO, 'ARDUINO'),
      //                   ),
      //                   //SizedBox(width: 20),
      //                 ],
      //               ),
      //               Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   FlatButton.icon(
      //                     //hoverColor: Color(0XFFd1e7f9),
      //                     icon: Padding(
      //                       padding: EdgeInsets.only(
      //                           left: 10.0, top: 10.0, bottom: 10.0),
      //                       child: SizedBox(
      //                         height: 22,
      //                         width: 22,
      //                         child: Image.asset(Assets.xd),
      //                       ),
      //                     ),
      //                     label: Padding(
      //                       padding: EdgeInsets.only(
      //                           right: 10.0, top: 10, bottom: 10),
      //                       child: Text('Adobe XD'),
      //                     ),
      //                     onPressed: () {
      //                       html.window
      //                           .open(Constants.XD,'XD');
      //                     },
      //                   ),
      //                 ],
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
      //                 child: Text(
      //                   'Built with Flutter 💙',
      //                   style: TextStyle(fontSize: 15.0, color: Colors.grey),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      //////
      //////
      //////
      //////
      //////
      smallScreen: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100.0,
              child: Hero(
                tag: 'logo',
                child: AvatarGlow(
                  endRadius: 80.0,
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
                      radius: 40.0,
                      //child:
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            ProjectCards(
              assetImage: Image.asset(Assets.hackster),
              projectTopic: "Hardware",
              projectDescription: "Building Electronics stuff",
              link: "${Constants.PROFILE_HACKSTER}",
            ),
            SizedBox(height: 30.0),
            ProjectCards(
              assetImage: Image.asset(Assets.github),
              projectTopic: "Software",
              projectDescription:
                  "Mobile, Web and Desktops Apps using Flutter/Dart",
              link: "${Constants.PROFILE_GITHUB}",
            ),
            SizedBox(height: 30.0),
            ProjectCards(
              assetImage: Image.asset(Assets.behance),
              projectTopic: "Design",
              projectDescription:
                  "Designing UI/UX Interfaces for Mobile and Web",
              link: "${Constants.PROFILE_BEHANCE}",
            ),
            SizedBox(height: 30.0),
            //Design Tab
            ProjectCards(
              assetImage: Image.asset(Assets.node),
              projectTopic: "Blog",
              projectDescription: "Writing Tech walk-throughs",
              link: "${Constants.PROFILE_HASHNODE}",
            ),

            SizedBox(height: 30.0),

            //Text('Technologies I fvck around with 😒:'),
            // Padding(
            //   padding: const EdgeInsets.only(top: 150.0, bottom: 10.0),
            //   child: Text('Built with Flutter 💙',

            //       //textScaleFactor: 1.5,
            //       style: Theme.of(context).textTheme.caption
            //       // style: TextStyle(
            //       //     fontSize: 15.0,
            //       //     color: Colors.grey //fontWeight: FontWeight.

            //       //     )
            //       // Padding(
            //       ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Padding(padding: EdgeInsets.all(20.0)),
                Center(
                  child: Text(
                    'Technologies I work with',
                    textAlign: TextAlign.center,
                    //textDirection: TextDire,
                    textScaleFactor: 1.5,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),

                    //First Layer---GitHub, Twitter, Medium
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.dart),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text('Dart'),
                          ),
                          onPressed: () {
                            html.window.open(Constants.DART, 'DART');
                          },
                        ),
                        //SizedBox(width: 10),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.flutter),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text(
                              'Flutter',
                            ),
                          ),
                          onPressed: () {
                            html.window.open(Constants.FLUTTER, 'FLUTTER');
                          },
                        ),
                        //SizedBox(width: 10),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(Assets.firebase),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text(
                              'Firebase',
                            ),
                          ),
                          onPressed: () {
                            html.window.open(Constants.FIREBASE, 'Firebase');
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
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.github),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text('GitHub'),
                          ),
                          onPressed: () {
                            html.window
                                .open(Constants.PROFILE_GITHUB, 'GITHUB');
                          },
                        ),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.espressif),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text(
                              'Espressif ',
                            ),
                          ),
                          // onPressed: () {
                          //   html.window.open(Constants.PROFILE_HASHNODE, 'HASHNODE');
                          // },
                          onPressed: () => html.window
                              .open(Constants.ESPRESSIF, 'ESPRESSIF'),
                        ),
                        //SizedBox(width: 20),
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Assets.arduino),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text('Arduino'),
                          ),
                          onPressed: () =>
                              html.window.open(Constants.ARDUINO, 'ARDUINO'),
                        ),
                        //SizedBox(width: 20),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          //hoverColor: Color(0XFFd1e7f9),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 22,
                              width: 22,
                              child: Image.asset(Assets.xd),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 10),
                            child: Text('Adobe XD'),
                          ),
                          onPressed: () {
                            html.window
                                .open(Constants.PROFILE_GITHUB, 'GITHUB');
                          },
                        ),
                        FlatButton.icon(
                          icon: Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: SizedBox(
                              height: 22,
                              width: 22,
                              child: Image.asset(Assets.figma),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: 10.0, bottom: 10.0),
                            child: Text('Figma'),
                          ),
                          onPressed: () =>
                              html.window.open(Constants.FIGMA, 'FIGMA'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                      child: Text(
                        'Built with Flutter 💙',
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
