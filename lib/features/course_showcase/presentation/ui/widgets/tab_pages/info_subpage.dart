part of '../../pages/course_main_page.dart';


class InfoSubpage extends StatelessWidget {
  const InfoSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InstructorsOfCourse(),
        SizedBox(
          height: 10,
        ),
        CourseDescriptionC(),
      ],
    );
  }
}

class CourseDescriptionC extends StatelessWidget {
  const CourseDescriptionC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          TitleText(text:
            "Course Description",
          ),
          SizedBox(
            height: 20,
          ),
          ReadMoreText(
            'This course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer.'
                'This course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer. The course is designed to teach you how to build a strong foundation in Android Development and become a professional Android Developer.',
            trimLines: 8,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            style: TextStyles.courseSubtitle.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}