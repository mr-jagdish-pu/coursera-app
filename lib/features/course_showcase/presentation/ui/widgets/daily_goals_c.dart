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
          SubTitleText(text: "Daily Goals"),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              RegularText12B600(
                text:
                "Do any 3 lectures, readings or quizzes",

              ),
              SizedBox(
                width: 20,
              ),
              RegularText14(
               text: '0/3',

              )
            ],
          )
        ],
      ),
    );
  }
}