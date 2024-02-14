import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/widgets/subsection_comp.dart';
import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:readmore/readmore.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: ListView(
        children: [
          AboutThisCourseCard(),
          ReusableCourseInfoC(),
          SkillYoullGainC(),
          Container(
            height: 10,
          ),
          SuggestedCoursesC(),
          SyllabusSectionC(),
          FAQSectionC()
        ],
      ),
    );
  }
}

class AboutThisCourseCard extends StatelessWidget {
  const AboutThisCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubSection(
            topic: 'About this course',
          ),
          SizedBox(
            height: 10,
          ),
          ReadMoreText(
            trimLines: 4,
            'This course is part of the Meta Android Developer Professional Certificate. Learn mobile app development with Android Developer. This course blends theory and practice to help you build great apps the right way. In this course, you will learn how to build a user interface and retrieve data from the web. You will also learn how to use the Android Room library to create a database and how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks. You will also learn how to use the Android WorkManager to schedule deferrable, asynchronous tasks.',
          trimMode: TrimMode.Line

          )



        ],
      ),
    );
  }
}


class ReusableCourseInfoC extends StatelessWidget {
  const ReusableCourseInfoC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(Icons.calendar_month),
            backgroundColor: Colors.deepPurple.shade50,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Course 1 of 13 in the',
                style: TextStyles.thickTitle.copyWith(fontSize: 15),
              ),
              Container(
                  child: Text(
                    'Meta Android Developer Professional Certificate',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  width: wd * 0.8),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillYoullGainC extends StatelessWidget {
  const SkillYoullGainC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      width: wd.w,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Skills you will gain",
          style: TextStyles.thickTitle,
        ),
        Wrap(
          spacing: 10,
          children: [
            Chip(
              backgroundColor: Colors.deepPurple.shade50,
              label: Text('Android Development'),
            ),
            Chip(
              backgroundColor: Colors.deepPurple.shade50,
              label: Text('Java'),
            ),
            Chip(
              backgroundColor: Colors.deepPurple.shade50,
              label: Text('Kotlin'),
            ),
            Chip(
              backgroundColor: Colors.deepPurple.shade50,
              label: Text('Mobile Development'),
            ),
            Chip(
              backgroundColor: Colors.deepPurple.shade50,
              label: Text('Software Development'),
            ),
          ],
        )
      ]),
    );
  }
}

class SuggestedCoursesC extends StatelessWidget {
  const SuggestedCoursesC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubSection(
          topic: 'You might also like',
        ),
        SizedBox(
          height: 10,
        ),
        CourseCardTileC(),
      ],
    );
  }
}

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
                  padding: EdgeInsets.only(top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 60,
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
    final wd = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text('Syllabus: What you will learn from this course',
              style: TextStyles.bigThickTitle
                  .copyWith(fontSize: 19,  fontWeight: FontWeight.w900), textScaler: TextScaler.linear(0.9)),
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
        Container(height: 30,)
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
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Week 1',
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

class FAQSectionC extends StatelessWidget {
  const FAQSectionC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text('Frequency Asked Questions',
              style: TextStyles.bigThickTitle
                  .copyWith(fontSize: 19, fontWeight: FontWeight.w900)),
        ),
        SizedBox(
          height: 0,
        ),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        FAQTileC(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        FAQTileC(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
      ],
    );
  }
}

class FAQTileC extends StatelessWidget {
  const FAQTileC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: wd,
      child: GFAccordion(
        margin: EdgeInsets.symmetric(vertical: 8),
        titlePadding: EdgeInsets.symmetric(horizontal: 0),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        expandedTitleBackgroundColor: Colors.grey.shade100,
        title: 'When will I have access to the lectures and assignments?',
        content:
            "Once you enroll in a course, you'll have access for the duration of your subscription, and you can complete the course at your own pace.",
      ),
    );
  }
}

//generated by FlutLab FTF Generator
//this code is generated by FlutLab FTF Generator
//Path: lib/features/course_showcase/presentation/ui/pages/course_details.dart
