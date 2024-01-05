import 'package:bmi/widgets/left.dart';
import 'package:bmi/widgets/right.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final widthcontorolar = TextEditingController();
  final heightcontrolar = TextEditingController();
  double resltBMI = 0;
  String reslttext = "";
  double widthgood = 0;
  double widhtbad = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "تو چنده ؟ BMI",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: widthcontorolar,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'وزن',
                          hintStyle: TextStyle(
                              color: Colors.deepOrangeAccent.withOpacity(0.5))),
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightcontrolar,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'قد',
                          hintStyle: TextStyle(
                              color: Colors.deepOrangeAccent.withOpacity(0.5))),
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  final weidth = double.parse(widthcontorolar.text);
                  final heidth = double.parse(heightcontrolar.text);
                  setState(() {
                    resltBMI = weidth / (heidth * heidth);
                    if (resltBMI > 25) {
                      reslttext = 'شما اضافه وزن دارید';
                      widhtbad = 270;
                      widthgood = 50;
                    } else if (resltBMI >= 18.5 && resltBMI < 25) {
                      reslttext = "وزن شما نرمال است";
                      widthgood = 270;
                      widhtbad = 50;
                    } else {
                      reslttext = " وزن شما کمتر از حد نرمال  است";
                      widhtbad = 15;
                      widthgood = 15;
                    }
                  });
                },
                child: Text(
                  "!   محاسبه کن",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "${resltBMI.toStringAsFixed(2)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
              ),
              Text(
                "$reslttext ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.red),
              ),
              LeftShap(
                width: widhtbad,
              ),
              SizedBox(
                height: 15,
              ),
              LeftShap(
                width: widhtbad,
              ),
              RightShap(
                width: widthgood,
              ),
              SizedBox(
                height: 15,
              ),
              RightShap(
                width: widthgood,
              ),
              SizedBox(
                height: 15,
              ),
              RightShap(
                width: widthgood,
              )
            ],
          ),
        ),
      ),
    );
  }
}
