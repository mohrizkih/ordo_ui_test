import 'package:flutter/material.dart';
import 'package:ordo_ui_test/constant.dart/colors.dart';

import 'custom_icons_icons.dart';

class MyLeading extends StatelessWidget {
  const MyLeading({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(maxWidth: 20),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: color ?? greenTukode,
          radius: 15,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Icon(
              CustomIcons.arrow_left_thick,
              color: Colors.white,
              size: 18,
            ),
          )),
    );
  }
}
