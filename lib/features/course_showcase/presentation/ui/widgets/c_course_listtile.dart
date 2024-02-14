part of '../pages/see_all_page.dart';
class CourseListTileC extends StatelessWidget {
  const CourseListTileC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Meta Android Developer', style: TextStyles.thickTitle),
              Text('Meta', style: TextStyles.courseSubtitle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
              Text('Specialization', style: TextStyles.courseSubtitle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14
                    ,
                  ),
                  Text('4.5', style: TextStyles.courseSubtitle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          SizedBox(
            child: ClipRRect(
                child: Image.network(

                  'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10)),
            height: 80,
            width: 75,
          )
        ],
      ),
    );
  }
}