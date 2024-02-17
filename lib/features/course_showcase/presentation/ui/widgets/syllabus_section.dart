import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class CourseCardTileC extends StatelessWidget {
  const CourseCardTileC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.15)),
      width: wd * 0.62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10, left: 4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 65,
                  height: 70),
              SizedBox(
                height: 8,
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Create the User Interface in Android Studio',
                  style: TextStyles.thickTitle.copyWith(
                    fontSize: 15,
                  ),
                  strutStyle: StrutStyle(
                      fontSize: 15, forceStrutHeight: true, height: 1.2),
                ),
                width: wd * 0.4,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Course'),
                  SizedBox(
                    child: VerticalDivider(
                      color: Colors.black87,
                    ),
                    height: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                  ),
                  Text("4.8")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class SyllabusSectionC extends StatelessWidget {
  const SyllabusSectionC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Text('Syllabus: What you will learn from this course',
              style: TextStyles.bigThickTitle
                  .copyWith(fontSize: 19, fontWeight: FontWeight.w900),
              textScaler: TextScaler.linear(0.9)),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        TimeLineComp(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        TimeLineComp(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        Container(
          height: 30,
        )
      ],
    );
  }
}

class TimeLineComp extends StatelessWidget {
  const TimeLineComp({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return SizedBox(
      width: wd * 0.95,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Week 1'.toUpperCase(),
                style: TextStyles.normalBut70,
              ),
            ),
            Expanded(
              child: GFAccordion(
                titleBorderRadius: BorderRadius.circular(10),
                collapsedTitleBackgroundColor: Colors.grey.shade100,
                expandedTitleBackgroundColor: Colors.grey.shade100,
                title: 'Introduction to Mobile Application Development',
                contentChild: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'In this module you will learn the basics of mobile application development and the Android platform. You will also have a chance to create your first Android application.',
                      style: TextStyles.normalBut70.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4 hours and 23 minutes to complete.',
                          style: TextStyles.normalBut70.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book_outlined,
                          size: 18,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '14 videos, 10 readings, 4 quizzes',
                          style: TextStyles.normalBut70.copyWith(fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                showAccordion: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}

