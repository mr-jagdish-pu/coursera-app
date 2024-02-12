import 'package:flutter/material.dart';

class StarRatingShower extends StatelessWidget {
  const StarRatingShower({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("4.5"),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.star,
          size: 16,
        )
      ],
    );
  }
}