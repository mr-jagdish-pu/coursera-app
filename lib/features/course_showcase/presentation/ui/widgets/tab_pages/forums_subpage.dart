part of '../../pages/course_main_page.dart';
class ForumSubpage extends StatelessWidget {
  const ForumSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text(
            'You can view the discussion forum  and interact with other students here in  the web version of the course.',
            style: TextStyles.courseSubtitle
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: wd,
            child: FilledButton(
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {},
              child: Row(children: [
                Icon(Symbols.share_windows, size: 20),
                SizedBox(
                  width: 10,
                ),
                Text('Share')
              ], mainAxisAlignment: MainAxisAlignment.center),
            ),
          )
        ],
      ),
    );
  }
}