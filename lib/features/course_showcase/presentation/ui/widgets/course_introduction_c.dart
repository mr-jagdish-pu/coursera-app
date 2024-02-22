part of '../pages/course_main_page.dart';
class CourseIntroductionC extends StatelessWidget {
  const CourseIntroductionC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Introduction to UX and UI design',
            style: GoogleFonts.openSans(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          ReadMoreText(
            'The introduction to UX and UI design course is a 4-week course '
                'that will introduce you to the basics of user experience and user interface design. '
                'You will learn about the principles of design, the design process, and the tools used in the design process. '
                'You will also learn about the different types of user interfaces and how to design them. '
                'This course is designed for beginners and no prior experience is required. '
                'By the end of this course, you will have a solid understanding of the basics of UX and UI design and be able to create your own designs.',
            trimLines: 3,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '  Show more',
            trimExpandedText: '  .....Show less',
          ),
          //description
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}