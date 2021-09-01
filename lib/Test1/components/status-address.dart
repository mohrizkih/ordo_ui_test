import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class StatusAddress extends StatelessWidget {
  const StatusAddress({
    Key? key,
    required this.iconData,
    required this.title,
    required this.description,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(iconData, color: greenStatusIcon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontWeight: FontWeight.w400,
                    color: greenTukode,
                    fontSize: 14),
              ),
              Text(
                description,
                style: TextStyle(
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
