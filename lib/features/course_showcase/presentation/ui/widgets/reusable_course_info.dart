import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class ReusableCourseInfoC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      width: wd,
      padding: EdgeInsets.only(left: 23, top: 30),
      child: Row(
        children: [
          SizedBox(
            width: 0.1 * wd,
            child: CircleAvatar(
              child: Icon(Icons.calendar_month),
              backgroundColor: Colors.deepPurple.shade50,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          SizedBox(
            width: wd * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Course 1 of 13 in the ',
                  style: TextStyles.thickTitle.copyWith(fontSize: 15),
                ),
                Container(
                    child: Text(
                      'Meta Android Developer Professional  Certificate',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    width: wd * 0.8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
