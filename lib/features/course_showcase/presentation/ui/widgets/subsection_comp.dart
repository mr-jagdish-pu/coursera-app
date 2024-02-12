import 'package:flutter/material.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class SubSection extends StatelessWidget {
  const SubSection({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      width: wd,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Most Rated',
            style: TextStyles.thickTitle,
          ),
          Text("See All", style: TextStyles.normalBut70,)
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
    );
  }
}