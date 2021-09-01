import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_ui_test/Test1/components/profile-picture.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';
import 'package:ordo_ui_test/constant.dart/url.dart';

class CollapsedInformation extends StatelessWidget {
  const CollapsedInformation({
    Key? key,
    required this.senderName,
    required this.platNumber,
  }) : super(key: key);

  final String senderName;
  final String platNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      child: Column(
        children: [
          Container(
            height: 4,
            margin: EdgeInsets.only(top: 12),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color(0xff47623F),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfilePicture(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          senderName,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                        ),
                        Text(
                          platNumber,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: greenSubtitle,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [greenGradient1, greenGradient2],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(chatIcon),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
