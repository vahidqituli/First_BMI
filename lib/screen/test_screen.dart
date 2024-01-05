import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int conter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                "$conter",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      conter += 1;
                    });
                  },
                  child: Text("Click"))
            ],
          ),
        ),
      ),
    );
  }
}
