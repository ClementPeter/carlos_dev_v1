import 'package:flutter/material.dart';
import 'dart:html' as html;

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    Key key,
    this.link,
    this.projectTopic,
    this.assetImage,
    this.projectDescription,
  }) : super(key: key);
  //variables
  final String link;
  final String projectTopic;
  final String projectDescription;
  final Widget assetImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open(link, projectTopic);
        print(link);
      },
      child: Container(
        width: 380,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.lightBlue[200].withOpacity(0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  child: assetImage,
                  radius: 100.0,
                ),
              ),
            ),
            Positioned(
              top: 60.0,
              right: 40.0,
              //left: 50,
              child: Text(
                projectTopic,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Positioned(
                bottom: 20.0,
                right: 40.0,
                //left: 50,
                child: Text(
                  projectDescription,
                  style: TextStyle(
                      fontSize: 13, textBaseline: TextBaseline.alphabetic),
                  // style: Theme.of(context).textTheme.caption),
                )),
          ],
        ),
      ),
    );
  }
}
