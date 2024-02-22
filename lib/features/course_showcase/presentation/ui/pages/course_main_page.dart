

import '../../../../../utils/custom_styles/text_styles.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
part '../widgets/course_materials_c.dart';
part '../widgets/course_introduction_c.dart';
part '../widgets/daily_goals_c.dart';
part '../widgets/timeremaining_c.dart';
part '../widgets/tab_pages/homesubpage.dart';

class CourseMainPage extends StatelessWidget {
  const CourseMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("DemoTestPage");
    return Scaffold(
        body: DefaultTabController(
            length: 4,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    stretch: true,
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        "Meta Android Developer",
                        style: TextStyles.thickTitle.copyWith(fontSize: 20),
                      ),
                      titlePadding: EdgeInsets.only(left: 70, bottom: 20),
                      collapseMode: CollapseMode.pin,
                      expandedTitleScale: 1.18,
                      stretchModes: [StretchMode.fadeTitle],
                    ),
                    toolbarHeight: 80,
                    centerTitle: true,
                    expandedHeight: 120,
                    backgroundColor: Colors.deepPurple.shade200,
                  ),
                  SliverAppBar(
                    collapsedHeight: 10,
                    toolbarHeight: 10,
                    pinned: false,
                    snap: true,
                    floating: true,
                    bottom: TabBar(
                      labelStyle: TextStyles.courseTitle
                          .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyles.courseSubtitle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                      isScrollable: true,

                      tabAlignment: TabAlignment.start,
                      tabs: [
                        Tab(
                          child: Text(
                            "Home",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Grades",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Forum",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Info",
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(children: [
                HomesubPage(),
                Text('Grades'),
                Text('Forums'),
                Text('Info'),
              ]),
            )));
  }
}









