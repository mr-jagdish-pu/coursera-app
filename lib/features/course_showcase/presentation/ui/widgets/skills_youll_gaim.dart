import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';
import 'subsection_comp.dart';
import 'syllabus_section.dart';

class SkillYoullGainC extends StatelessWidget {
  const SkillYoullGainC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubSection(
          topic: 'You might be interested in',
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CourseCardTileC(),
        ),
      ],
    );
  }
}

