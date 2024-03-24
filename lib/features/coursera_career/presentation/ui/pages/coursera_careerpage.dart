import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/widgets/skills_youll_gaim.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../test_screens/new_test_file.dart';
import '../../../../../utils/app_router/go_router.dart';

class CourseraCareerPage extends StatelessWidget {
  const CourseraCareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: ListView(
        children: [
          20.spacerH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderText(text: 'coursera'),
                7.spacerW,
                RegularText14(text: 'Career'),
              ],
            ),
          ),
          20.spacerH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20.0),
            child: SizedBox(child: TitleText(text: 'What job roles interests you?'), width: wd * 0.7,),
          ),
          10.spacerH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20.0),
            child: RegularText12(text: 'Select the job roles that interest you the most. We will use this information to recommend relevant courses and content. You can always change your preferences later.'),
          ),
      10.spacerH,
          InkWell(child: SkillYoullGainC(text: "Data Science & Analytics (3)",), onTap: (){
            GoRouter.of(context).go('${RoutesNames.courseraCareer}/${RoutesNames.myCareer}');
          },),
          7.spacerH,
          SkillYoullGainC(text: "Software Engineering & IT (13)",),
          5.spacerH,
        
        ],
      ),
    );
  }
}
