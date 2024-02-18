part of '../pages/course_details.dart';

class InstructorsOfCourse extends StatelessWidget {
  const InstructorsOfCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: wd,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20),
          child: Text('Instructors', style: TextStyles.thickTitle),
        ),
        _InstructorsProfile(),
        _InstructorsProfile(),
      ]),
    );
  }
}

class _InstructorsProfile extends StatelessWidget {
  const _InstructorsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      width: wd,
      padding: const EdgeInsets.only(left: 20.0, right: 10, top: 20),
      height: 80,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/4042/4042356.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: wd.w * 0.63,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Jagdish G.',
                    style: TextStyles.courseTitle
                        .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Senior Software Engineer',
                    style: TextStyles.courseTitle.copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ]),
    );
  }
}
