import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: HeaderText(text: "Learn", ),
        toolbarHeight: 80,
        backgroundColor: Colors.deepPurple.withOpacity(0.44),


      ),
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(

        children: [

          TitleText(text: "Keep learning to make progress",),

        SizedBox(height: 30,),

          SelectedCourses(),SelectedCourses(),SelectedCourses(),
        ],
      ),
    ));
  }
}

class SelectedCourses extends StatelessWidget {
  const SelectedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitleText(text:"Meta Android Developer",),
          RegularText11(text:"By Meta", ),
          SelectedCourseCardComp(),
          Center(
            child: DotsIndicator(

              mainAxisSize: MainAxisSize.min,
                dotsCount: 13, decorator: DotsDecorator(size: Size(6, 6),spacing: EdgeInsets.all(2.5),activeColor: Colors.deepPurple.withOpacity(0.9),activeSize: Size(6, 6))),
          ),

        ],
      ),
      width: 0.8 * wd.w,
    );
  }
}

class SelectedCourseCardComp extends StatelessWidget {
  const SelectedCourseCardComp({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.15)),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 20, top: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RegularText12(text:
            "Course 1 of 14",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: TitleText(
                  text:
                  "Introduction to Programming",

                ),
                width: wd.w * 0.65,
              ),
              InkWell(
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.grey.withOpacity(0.9),
                ),
                onTap: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RegularText11(text:'You may join this course whenever you are ready.',
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 45,
            width: wd.w,
            child: FilledButton(
                onPressed: () {},
                child: Text('Enroll',
                    style: TextStyles.courseTitle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9))),
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
