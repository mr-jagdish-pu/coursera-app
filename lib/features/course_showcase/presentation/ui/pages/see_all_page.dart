import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';
part '../widgets/c_course_listtile.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: TitleText(text:
              'Professional Certificate',

            ),
          ),
          backgroundColor: Colors.deepPurple.withOpacity(0.44),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseListTileC(),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            CourseListTileC(),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            CourseListTileC(),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            CourseListTileC(),
          ],
        ));
  }
}
