import 'package:flutter/material.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class SummaryRating extends StatelessWidget {
  const SummaryRating({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: almostBlack),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: almostBlack),
        ),
      ],
    );
  }
}
