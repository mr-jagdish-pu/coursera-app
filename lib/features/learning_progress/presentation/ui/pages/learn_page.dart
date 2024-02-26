import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learn", style: TextStyles.bigThickTitle.copyWith(color: Colors.black),),
        toolbarHeight: 80,
        backgroundColor: Colors.deepPurple.withOpacity(0.44),


      ),
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(

        children: [
          Text("Keep learning to make progress", style: TextStyles.thickTitle.copyWith(color: Colors.black87.withOpacity(0.4))),
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
          Text("Meta Android Developer", style: TextStyles.thickTitle.copyWith(color: Colors.black87.withOpacity(0.6), fontSize: 15)),
          Text("By Meta", style: TextStyles.courseSubtitle.copyWith(fontSize: 12)),
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
          Text(
            "Course 1 of 13",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  "Introduction to Programming",
                  style: TextStyles.thickTitle
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
          Text('You may join this course whenever you are ready.',
              style: TextStyles.courseSubtitle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black87.withOpacity(0.67))),
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
