part of '../pages/course_main_page.dart';
class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left:20.0, bottom: 20, top: 20),
            child: SubTitleText(text: 'Course Introduction', )
        ),
        CourseMaterialListTile(),
        Divider(),
        CourseMaterialListTile(),
        Divider(),
        CourseMaterialListTile(),
        Divider(),
        CourseMaterialListTile(),
        Divider(),
      ],
    );
  }
}

class CourseMaterialListTile extends StatelessWidget {
  const CourseMaterialListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10,
        bottom: 25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
              Icons.play_circle_outline_rounded,
              size: 28,
              color: Colors.grey.shade700
          ),
          SizedBox(width: 10),
          SizedBox(
            width: wd.w * 0.7,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RegularText12B600(

                  text:"Introduction to UX and UI design and  principles of UI and UX design",
               ),
              SizedBox(height: 5,),
              RegularText11(text:
                "Video - 4:15 min",

              ),
            ]),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.cloud_download_outlined,
              color: Colors.grey.shade600,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}

