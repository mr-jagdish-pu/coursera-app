part of '../pages/course_main_page.dart';
class DailyGoalsC extends StatelessWidget {
  const DailyGoalsC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daily Goals",
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w900,
                letterSpacing: -0.4,
                color: Colors.grey.shade700),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text(
                "Do any 3 lectures, readings or quizzes",
                style: TextStyles.thickTitle
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '0/3',
                style: TextStyles.thickTitle
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}