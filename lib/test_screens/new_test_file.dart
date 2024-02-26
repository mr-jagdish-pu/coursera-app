import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTestPage extends StatelessWidget {
  const NewTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderText(text: 'Profile'),
          TitleText(text: "Jagdish Ghimire"),
          RegularText14(text: "jagdissghimire@gmail.com", ),
          SubTitleText(text: "Achievements"),

          SubTitleText(text: "Programming in Kotlin"),
          RegularText12(text: "Coursera Project Network", ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      strutStyle: StrutStyle(height: 1, forceStrutHeight: true, fontSize: 25),
      style: GoogleFonts.notoSansJp(
          fontWeight: FontWeight.w900,
          fontSize: 25,
          letterSpacing: -0.5,
          color: Color(0xff313121).withOpacity(0.9)),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      strutStyle: StrutStyle(height: 1, forceStrutHeight: true, fontSize: 16),
      style: GoogleFonts.notoSansJp(
          fontWeight: FontWeight.w900,
          fontSize: 16,
          letterSpacing: -0.5,
          color: Colors.grey.shade800),
    );
  }
}

class RegularText14 extends StatelessWidget {
  final String text;
  const RegularText14({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      strutStyle: StrutStyle(height: 1, forceStrutHeight: true, fontSize: 14),
      style: GoogleFonts.notoSansJp(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: -0.5,
          color: Colors.grey.shade800),
    );
  }
}

class SubTitleText extends StatelessWidget {
  final String text;
  const SubTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      strutStyle: StrutStyle(height: 1, forceStrutHeight: true, fontSize: 14),
      style: GoogleFonts.notoSansJp(
          fontWeight: FontWeight.w900,
          fontSize: 14,
          letterSpacing: -0.5,
          color: Colors.grey.shade800),
    );
  }
}
class RegularText12 extends StatelessWidget {
  final String text;
  const RegularText12({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
 return Text(
      text,
      strutStyle: StrutStyle(height: 1, forceStrutHeight: true, fontSize: 14),
      style: GoogleFonts.notoSansJp(
          fontWeight: FontWeight.w600,
          fontSize: 11,
          letterSpacing: -0.5,
          color: Colors.grey.shade800),
    );;
  }
}

