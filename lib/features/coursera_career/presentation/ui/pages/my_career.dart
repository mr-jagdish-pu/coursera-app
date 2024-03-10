import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCareerPage extends StatelessWidget {
  const MyCareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: HeaderText(
            text: "Career",
          ),
        ),
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          AboutJobTitle(),
          8.spacerH,
          GetAQuickOverview(),
          RelatedCourses()
        ],
      ),
    );
  }
}

class AboutJobTitle extends StatelessWidget {
  const AboutJobTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Solutions Architect',
            style: GoogleFonts.notoSansJp(
                fontSize: 29, letterSpacing: 1.5, fontWeight: FontWeight.w900),
          ),
          6.spacerH,
          //small description of responsibilities with regular 14 under 80 characters
          SizedBox(
              width: wd * 0.9,
              child: Text(
                'Design and implement computer systems and networks for an organization to meet business needs. They define the architecture of a system.',
                strutStyle: StrutStyle(
                    height: 1.2, forceStrutHeight: true, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansJp(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    letterSpacing: 0.2,
                    color: Colors.grey.shade700),
              )),
          20.spacerH,
          //small description of responsibilities with regular 14 under 80 characters
          SizedBox(
              width: wd * 0.9,
              child: Text(
                '\$120,000 - \$150,000 per year  :  14,000 job openings*',
                strutStyle: StrutStyle(
                    height: 1.2, forceStrutHeight: true, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansJp(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    letterSpacing: 0.2,
                    color: Colors.grey.shade800),
              )),
        ],
      ),
    );
  }
}

class GetAQuickOverview extends StatelessWidget {
  const GetAQuickOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitleText(text: 'Get a quick overview'),
          10.spacerH,
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade500)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                        fit: BoxFit.fill,
                        width: 40,
                        height: 20,
                      ),
                      10.spacerW,
                      RegularText12B600(text: 'Amazon Web Services'),
                    ],
                  ),
                  10.spacerH,
                  SubTitleText(text: 'AWS Cloud Technical Essentials'),
                  5.spacerH,
                  RegularText12B600(text: 'Course : 11 hours : Beginner'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RelatedCourses extends StatelessWidget {
  const RelatedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitleText(text: 'Looking for a job in this field?'),
          15.spacerH,
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade500)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                        fit: BoxFit.fill,
                        width: 40,
                        height: 20,
                      ),
                      10.spacerW,
                      RegularText12B600(text: 'Amazon Web Services'),
                    ],
                  ),
                ),
                10.spacerH,
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: SubTitleText(text: 'AWS Cloud Technical Essentials'),
                ),
                5.spacerH,
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child:
                      RegularText12B600(text: 'Course : 11 hours : Beginner'),
                ),
                10.spacerH,
                Divider(
                  color: Colors.grey.shade500,
                ),

                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                8.spacerH,
                Align(child: SubTitleText(text: 'Show all 6 courses'), alignment: Alignment.center),
                10.spacerH,
              ],
            ),
          ),
          20.spacerH,
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade500)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.yjIV37MAgxP_oloIna74kAHaE7?rs=1&pid=ImgDetMain',
                        fit: BoxFit.fill,
                        width: 40,
                        height: 20,
                      ),
                      10.spacerW,
                      RegularText12B600(text: 'Amazon Web Services'),
                    ],
                  ),
                ),
                10.spacerH,
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: SubTitleText(text: 'AWS Cloud Technical Essentials'),
                ),
                5.spacerH,
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child:
                  RegularText12B600(text: 'Course : 11 hours : Beginner'),
                ),
                10.spacerH,
                Divider(
                  color: Colors.grey.shade500,
                ),

                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                CourseName(),
                Divider(
                  color: Colors.grey.shade500,
                ),
                8.spacerH,
                Align(child: SubTitleText(text: 'Show all 6 courses'), alignment: Alignment.center),
                10.spacerH,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseName extends StatelessWidget {
  const CourseName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
      child: Row(
        children: [
          RegularText12B600(text: 'Course 1'),
          15.spacerW,
          RegularText12(text: 'Operating System Foundations')
        ],
      ),
    );
  }
}
