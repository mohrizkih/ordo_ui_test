import 'package:flutter/material.dart';
import 'package:ordo_ui_test/Test2/models/portofolio.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class Test2TileItem extends StatelessWidget {
  const Test2TileItem({
    Key? key,
    required this.width,
    required this.e,
  }) : super(key: key);

  final double width;
  final Customer e;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 0.3,
      width: width * 0.3,
      child: Stack(
        children: [
          Container(
              height: width * 0.3,
              width: width * 0.3,
              child: Image.asset(e.imagePath, fit: BoxFit.cover)),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 40,
              margin: EdgeInsets.only(top: 4, right: 4),
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [veryDarkBlue, gradientDarkBlue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: starYellowDark,
                    size: 14,
                  ),
                  Text(
                    e.rating.toString(),
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.4),
              padding: EdgeInsets.only(left: 4, bottom: 2),
              child: Text(
                e.customerName,
                style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
