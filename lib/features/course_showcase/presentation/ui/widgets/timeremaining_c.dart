part of '../pages/course_main_page.dart';

class TimeRemainingC extends StatelessWidget {
  const TimeRemainingC({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: SizedBox(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText12B600(text:
                  "4 hr 15 min to go",

                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: LinearProgressIndicator(
                      value: 0.4,
                      color: Colors.grey,
                      minHeight: 5,
                      backgroundColor: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  width: wd * 0.5,
                ),
                Text("1 assignment due"),
              ],
            ),
            SizedBox(
              width: 40.w,
            ),
            SizedBox(
              height: 80,
              child: VerticalDivider(
                width: 3,
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Icon(Icons.cloud_download_outlined),
                Text("Download"),
                RegularText12(text:
                  "45 MB",

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}