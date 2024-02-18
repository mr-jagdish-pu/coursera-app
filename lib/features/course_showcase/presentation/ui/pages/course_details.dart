import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';

import '../widgets/about_this_course.dart';
import '../widgets/faq_section.dart';
import '../widgets/reusable_course_info.dart';
import '../widgets/skills_youll_gaim.dart';
import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../widgets/syllabus_section.dart';
part '../widgets/start_learning_today.dart';

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
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 10, bottom: 25, top: 20),
            child: Text(
                'This course is part of Meta Android Developer Professional Certificate'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 10,
              bottom: 25,
            ),
            child: Row(
              children: [
                Icon(Icons.star, size: 18),
                Icon(Icons.star, size: 18),
                Icon(Icons.star, size: 18),
                Icon(Icons.star, size: 18),
                Icon(Icons.star_border_outlined),
                SizedBox(
                  width: 8,
                ),
                Text("4.6 (11k)"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Offered By',
              style: TextStyles.thickTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Meta',
              style: TextStyles.thickTitle.copyWith(color: Colors.blue),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AboutThisCourseCard(),
          ReusableCourseInfoC(),
          ReusableCourseInfoC(),
          ReusableCourseInfoC(),
          ReusableCourseInfoC(),
          SkillYoullGainC(),
          Container(
            height: 10,
          ),
          SuggestedCoursesC(),
          SyllabusSectionC(),
          StartLearningTodayC(),
          FAQSectionC()
        ],
      ),
    );
  }
}

