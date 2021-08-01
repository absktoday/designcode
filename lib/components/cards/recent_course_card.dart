import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';
import 'package:designcode/constants.dart';

class RecentCourseCard extends StatelessWidget {

  RecentCourseCard({required this.course});

  Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                gradient: course.background,
                borderRadius: BorderRadius.circular(41),
                boxShadow: [
                  BoxShadow(
                      color: course.background.colors[0].withOpacity(0.3),
                      offset: Offset(0,20),
                      blurRadius: 30
                  ),
                  BoxShadow(
                      color: course.background.colors[1].withOpacity(0.3),
                      offset: Offset(0,20),
                      blurRadius: 30
                  )
                ]
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32, left: 32, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: course.courseSubtitle,
                        child: Text(
                          course.courseSubtitle,
                          style: kCardSubtitleStyle,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Hero(
                        tag: course.courseTitle,
                        child: Text(
                          course.courseTitle,
                          style: kCardTitleStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: course.illustration,
                    child: Image.asset('asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover ,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 42),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(color: kShadowColor, offset: Offset(0,4), blurRadius: 16),
                ]
            ),
            padding: EdgeInsets.all(12),
            child: Hero(
                tag: course.logo.toString(),
                child: Image.asset('asset/logos/${course.logo}')
            ),
          ),
        )
      ],
    );
  }
}