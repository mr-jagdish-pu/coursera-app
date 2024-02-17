import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class FAQSectionC extends StatelessWidget {
  const FAQSectionC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Frequency Asked Questions',
              style: TextStyles.bigThickTitle
                  .copyWith(fontSize: 19, fontWeight: FontWeight.w900)),
        ),
        SizedBox(
          height: 0,
        ),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        FAQTileC(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
        FAQTileC(),
        Divider(
          color: Colors.grey.withOpacity(0.8),
          thickness: 1,
        ),
      ],
    );
  }
}

class FAQTileC extends StatelessWidget {
  const FAQTileC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: wd,
      child: GFAccordion(
        margin: EdgeInsets.symmetric(vertical: 8),
        titlePadding: EdgeInsets.symmetric(horizontal: 0),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        expandedTitleBackgroundColor: Colors.grey.shade100,
        title: 'When will I have access to the lectures and assignments?',
        content:
            "Once you enroll in a course, you'll have access for the duration of your subscription, and you can complete the course at your own pace.",
      ),
    );
  }
}

