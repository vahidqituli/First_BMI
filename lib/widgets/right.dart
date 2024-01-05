import 'package:flutter/material.dart';

class RightShap extends StatelessWidget {
  final double width;
  const RightShap({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "شاخص مثبت",
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: width,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.green[400]),
        ),
      ],
    );
  }
}
