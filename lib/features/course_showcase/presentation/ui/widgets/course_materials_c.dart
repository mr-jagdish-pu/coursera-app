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
            child: Text('Course Introduction', style: GoogleFonts.openSans(fontWeight: FontWeight.w700, fontSize: 15.5, color: Colors.black87.withOpacity(0.6)))
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
              Text(

                  maxLines: 2,

                  overflow: TextOverflow.ellipsis,
                  "Introduction to UX and UI design and  principles of UI and UX design",
                  style: TextStyles.thickTitle
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 14, height: 1.1, color: Colors.black87.withOpacity(0.65),)
              ),
              SizedBox(height: 5,),
              Text(
                "Video - 4:15 min",
                style: TextStyles.courseSubtitle
                    .copyWith(color: Colors.grey.shade600),
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