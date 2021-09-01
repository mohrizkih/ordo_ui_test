import 'package:flutter/material.dart';

class StatusSeparator extends StatelessWidget {
  const StatusSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 3,
            backgroundColor: Colors.grey.shade300,
          ),
          CircleAvatar(
            radius: 3.5,
            backgroundColor: Colors.grey.shade400,
          ),
          CircleAvatar(
            radius: 4,
            backgroundColor: Colors.grey.shade500,
          ),
        ],
      ),
    );
  }
}
