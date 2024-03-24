import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/widgets/star_ratings_comp.dart';
import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/app_router/go_router.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        
       context.go(RoutesNames.courseDetails);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: (wd * 0.45).w,
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
                  errorBuilder: (context, a, B) =>
                      Center(child: Icon(Icons.warning_amber)),
                  fit: BoxFit.fill,
                  'https://th.bing.com/th/id/R.ca3215dfb3008313ffa25a089daef890?rik=Lo1scMB4FyGv4A&pid=ImgRaw&r=0',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
      
            RegularText14(
               text: 'Python for Everybody',
      
            ),
            3.spacerH,
            RegularText12B600(text:
              'International University',
      
            ),
            3.spacerH,
            RegularText12(
              text:
              'Programming',
      
            ),
            //4.5 star rating
            StarRatingShower(),
          ],
        ),
      ),
    );
  }
}
