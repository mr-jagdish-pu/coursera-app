import 'package:auth_fb_bloc/utils/app_router/go_router.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/custom_styles/text_styles.dart';
import '../widgets/course_card_comp.dart';
import '../widgets/star_ratings_comp.dart';
import '../widgets/subsection_comp.dart';

class RealHomePage extends StatelessWidget {
  const RealHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          collapsedHeight: 80,
          toolbarHeight: 70,
          backgroundColor: Colors.deepPurple.shade100,
          pinned: true,
          title: Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: Text(
              "Explore",
              style: TextStyles.bigThickTitle,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 8.w, bottom: 10),
          sliver: SliverFillRemaining(
            hasScrollBody: true,
            child: CustomScrollView(
              slivers: [
                SliverPadding(padding: EdgeInsets.only(top: 10)),
                SliverToBoxAdapter(
                  child: SubSection(topic: 'Topics'),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 10)),
                SliverToBoxAdapter(
                  child: Row(children: [
                    TopicsComp(),
                    TopicsComp(),
                  ]),
                ),
                SliverPadding(padding: EdgeInsets.all(20)),
                SliverToBoxAdapter(
                  child: SubSection(topic: 'Most Popular Courses'),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 250,
                    margin: EdgeInsets.only(bottom: 0),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CourseCard();
                        },
                        itemCount: 4,
                        scrollDirection: Axis.horizontal),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SubSection(topic: 'Earn Your Degree'),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 250,
                    margin: EdgeInsets.only(bottom: 0),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CourseCard();
                        },
                        itemCount: 4,
                        scrollDirection: Axis.horizontal),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SubSection(
                      topic: 'Recently Viewed Courses and Specialization'),
                ),
                SliverToBoxAdapter(
                  child: Container(

                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        CourseListTiles(),
                        CourseListTiles(),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        )
      ]),
    );
  }
}

class TopicsComp extends StatelessWidget {
  const TopicsComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue.withOpacity(0.7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'IT & Software',
              style: TextStyles.courseTitle,
            ),
          ],
        ),
      ),
    );
  }
}

class CourseListTiles extends StatelessWidget {
  const CourseListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textDetails(),
          Container(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://th.bing.com/th/id/OIP.Q0FAgmhECAqEMd_znNNXgwHaHa?rs=1&pid=ImgDetMain'),
            ),
          )
        ],
      ),
    );
  }

  Widget textDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Meta Social Media Marketing",
            overflow: TextOverflow.ellipsis, style: TextStyles.courseTitle),
        Text("Meta", style: TextStyles.courseSubtitle),
        Text("Professional Certificate", style: TextStyles.courseSubtitle),
        StarRatingShower()
      ],
    );
  }
}
/*
Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Column(
          children: [
            //sub section
            SubSection(),
            Container(
              width: 2000,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CourseCard(),
                CourseCard(),
              ],
            ),
            CourseListTiles()
          ],
        ),
      )

       SliverToBoxAdapter(
              child: Container(
                height: 255,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CourseCard();
                    },
                    itemCount: 4,
                    scrollDirection: Axis.horizontal),
              ),
 */
