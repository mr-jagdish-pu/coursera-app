part of '../../pages/course_main_page.dart';

class GradesSubPage extends StatelessWidget {
  const GradesSubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.check_circle_outline),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: wd.w * 0.7,
                child: RegularText12(
                 text: 'Complete the course by passing all the assignments and quizzes',

                ),
              )
            ],
          ),
        ),
        ModuleQuizC(), ModuleQuizC(), ModuleQuizC(),
      ],
    );
  }
}

class ModuleQuizC extends StatelessWidget {
  const ModuleQuizC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey.shade100,
      margin: EdgeInsets.only(top: 25),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.lock_outline),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: wd.w * 0.7,
                child: SubTitleText(text:
                  'Module Quiz: Introduction to UI/UX',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: wd - 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //make both as purchase wala
                  children: [
                    RegularText12B600(
                     text: 'Quiz',

                      ),

                    RegularText12(text:'Weight: 20%',
                       )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: wd - 90,
                child: Divider(
                  height: 20,
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
              ),
              RegularText11(
               text: 'Purchase course to unlock this item',

              ),
            ],
          )
        ],
      ),
    );
  }
}
