import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Column(
        children: [
          ReusableCourseInfoC(),
        ],
      ),
    );
  }
}


class ReusableCourseInfoC extends StatelessWidget {
  const ReusableCourseInfoC({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Icon(Icons.calendar_month),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
