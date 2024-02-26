import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/course_details.dart';
import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:material_symbols_icons/symbols.dart';

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
part '../widgets/tab_pages/grades_subpage.dart';
part '../widgets/tab_pages/info_subpage.dart';
part '../widgets/tab_pages/forums_subpage.dart';

class CourseMainPage extends StatelessWidget {
  const CourseMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("DemoTestPage");
    return Scaffold(
        body: DefaultTabController(
            initialIndex: 1,
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
                      title: TitleText(text: "Meta Android Developer"),
                      titlePadding: EdgeInsets.only(left: 70, bottom: 20),
                      collapseMode: CollapseMode.pin,
                      expandedTitleScale: 1.2,
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
                      //by default open in 2nd tab



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
                GradesSubPage(),
                ForumSubpage(),
                InfoSubpage(),
              ],  ),
            )));
  }
}
