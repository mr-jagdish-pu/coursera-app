part of '../pages/course_details.dart';

class StartLearningTodayC extends StatelessWidget {
  const StartLearningTodayC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20),
          child: Text(
            'Start Learning Today',
            style: TextStyles.bigThickTitle.copyWith(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        financialAid(true),
        SizedBox(
          height: 20,
        ),
        CourseHighlightsC(),
        CourseHighlightsC(),
        CourseHighlightsC(),
        CourseHighlightsC(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget financialAid(bool isAvailable) {
    if (isAvailable) {
      return Container(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "Financial Aid Available",
          style:
              TextStyles.thickTitle.copyWith(color: Colors.blue, fontSize: 15),
        ),
      );
    }
    return Container();
  }
}

class CourseHighlightsC extends StatelessWidget {
  const CourseHighlightsC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Container(
      width: wd,
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 4,
      ),
      child: Row(
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 8,
          ),
          SizedBox(
              width: wd.w * 0.8,
              child: Text('Taught by top companies and universities')),
        ],
      ),
    );
  }
}
