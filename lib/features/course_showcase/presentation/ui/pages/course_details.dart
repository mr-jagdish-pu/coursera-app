import 'package:auth_fb_bloc/utils/app_router/go_router.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:go_router/go_router.dart';

import '../../../../../test_screens/new_test_file.dart';
import '../widgets/about_this_course.dart';
import '../widgets/faq_section.dart';
import '../widgets/reusable_course_info.dart';
import '../widgets/skills_youll_gaim.dart';
import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../widgets/syllabus_section.dart';
part '../widgets/start_learning_today.dart';
part '../widgets/instructors_course.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(height: 50, color: Colors.blue.shade200 , child: Center(child: InkWell(child: SubTitleText(text: 'See Enrollment Options',), onTap: (){GoRouter.of(context).push('${RoutesNames.home}/${RoutesNames.courseDetails}/${RoutesNames.courseMainPage}');},)),),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top:38.0),
          child: HeaderText(
            text: "Course Details",
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 10, bottom: 25, top: 20),
            child: RegularText12(text:
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
                RegularText14(text: "4.6 (11k)"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TitleText(
              text:
              'Offered By',

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0, top: 5),
            child: TitleText(
              text:
              'Meta',

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
          InstructorsOfCourse(),
          StartLearningTodayC(),
          FAQSectionC()
        ],
      ),
    );
  }
}
