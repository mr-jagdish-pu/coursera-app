part of '../../pages/course_main_page.dart';
class HomesubPage extends StatelessWidget {
  const HomesubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Chip(
              label: Text("WEEK 1"),
            ),
            SizedBox(
              width: 20,
            ),
            Chip(
              label: Text("WEEK 1"),
            ),
            SizedBox(
              width: 20,
            ),
            Chip(
              label: Text("WEEK 1"),
            ),
          ],
        ),
        TimeRemainingC(),
        DailyGoalsC(),
        CourseIntroductionC(),
        CourseHeader(),CourseHeader(),
      ],
    );
  }
}