import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class SubSection extends StatelessWidget {
  final String topic;
  const SubSection({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      width: wd.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width:  (wd * 0.7).w,
            child: Text(
              '$topic',
              style: TextStyles.thickTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Text("See All", style: TextStyles.normalBut70),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
    );
  }
}