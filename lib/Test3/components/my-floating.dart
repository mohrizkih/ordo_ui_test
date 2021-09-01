import 'package:flutter/material.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 85,
        color: Colors.white.withOpacity(0.7),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  gradient: LinearGradient(
                    colors: [myBlue, blueGradient],
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft,
                  )),
              child: Center(
                  child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Complain',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
