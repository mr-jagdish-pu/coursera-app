import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';
import '../widgets/course_card_comp.dart';
import '../widgets/star_ratings_comp.dart';
import '../widgets/subsection_comp.dart';

class RealHomePage extends StatelessWidget {
  const RealHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Column(
          children: [
            //sub section
            SubSection(),
            Container(
              width: 2000,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CourseCard(),
                CourseCard(),
              ],
            ),
            CourseListTiles()
          ],
        ),
      ),
    );
  }
}

class CourseListTiles extends StatelessWidget {
  const CourseListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(


      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textDetails(),
          Container(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://th.bing.com/th/id/OIP.Q0FAgmhECAqEMd_znNNXgwHaHa?rs=1&pid=ImgDetMain'),
            ),
          )
        ],
      ),
    );
  }

  Widget textDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Meta Social Media Marketing", overflow: TextOverflow.ellipsis,
            style: TextStyles.courseTitle),
        Text("Meta",  style: TextStyles.courseSubtitle),
        Text("Professional Certificate",  style: TextStyles.courseSubtitle),
        StarRatingShower()
      ],
    );
  }
}
