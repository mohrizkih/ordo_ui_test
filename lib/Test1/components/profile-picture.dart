import 'package:flutter/material.dart';
import 'package:ordo_ui_test/constant.dart/url.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 9),
                child: Image.asset(uncompleteCircle, width: 50),
              )),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(fotoVendor),
            ),
          )
        ],
      ),
    );
  }
}
