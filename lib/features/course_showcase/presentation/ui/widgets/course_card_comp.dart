import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/widgets/star_ratings_comp.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';
import '../pages/homepage.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(5),
      width: (wd * 0.48).w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            width: 800,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                fit: BoxFit.fill,
                'https://th.bing.com/th/id/R.ca3215dfb3008313ffa25a089daef890?rik=Lo1scMB4FyGv4A&pid=ImgRaw&r=0',
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          Text(
            'Python for Everybody',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.courseTitle,
          ),
          Text(
            'International University',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.courseSubtitle,
          ),
          Text(
            'Programming',
            style: TextStyles.courseSubtitle,
          ),
          //4.5 star rating
          StarRatingShower(),
        ],
      ),
    );
  }
}