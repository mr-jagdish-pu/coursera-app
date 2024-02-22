import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';

class DemoTestPage extends StatelessWidget {
  const DemoTestPage({super.key});

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

class HomesubPage extends StatelessWidget {
  const HomesubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TimeRemainingC(), DailyGoalsC()],
    );
  }
}

class TimeRemainingC extends StatelessWidget {
  const TimeRemainingC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: SizedBox(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "4 hr 15 min to go",
                  style: TextStyles.thickTitle
                      .copyWith(fontWeight: FontWeight.w800, fontSize: 14),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: LinearProgressIndicator(
                      value: 0.4,
                      color: Colors.grey,
                      minHeight: 5,
                      backgroundColor: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  width: wd * 0.5,
                ),
                Text("1 assignment due"),
              ],
            ),
            SizedBox(
              width: 40.w,
            ),
            SizedBox(
              height: 80,
              child: VerticalDivider(
                width: 3,
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Icon(Icons.cloud_download_outlined),
                Text("Download"),
                Text(
                  "45 MB",
                  style: TextStyles.courseSubtitle
                      .copyWith(color: Colors.grey.shade600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DailyGoalsC extends StatelessWidget {
  const DailyGoalsC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daily Goals",
            style: TextStyles.thickTitle.copyWith(
                fontSize: 14.5,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.2),
          ),
          Row(
            children: [
              Checkbox(

                value: false,
                onChanged: (value) {},
              ),
              Text("Do any 3 lectures, readings or quizzes"), SizedBox(width: 20,), Text('0/3')
            ],
          )
        ],
      ),
    );
  }
}
