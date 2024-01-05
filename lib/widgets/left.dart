import 'package:flutter/material.dart';

class LeftShap extends StatelessWidget {
  final double width;
  const LeftShap({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
              color: Colors.redAccent),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "شاخص منفی",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
