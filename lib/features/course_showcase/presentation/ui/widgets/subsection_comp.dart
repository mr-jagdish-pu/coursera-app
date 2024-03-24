import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/app_router/go_router.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/custom_styles/text_styles.dart';

class SubSection extends StatelessWidget {
  final String topic;
  const SubSection({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 010),
      width: wd.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: (wd * 0.7).w,
            child: TitleText(
             text: '$topic',

            ),
          ),
          InkWell(child: Text("See All", style: TextStyles.normalBut70), onTap: (){

            final String routes = '${RoutesNames.home}/${RoutesNames.seeAll}' ;
            context.go(routes);


          }),
        ],
      ),
    );
  }
}
