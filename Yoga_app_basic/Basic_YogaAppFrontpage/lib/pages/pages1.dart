import 'package:final_project/pages/pages2.dart';
import 'package:flutter/material.dart';

class pagg1 extends StatelessWidget {
  final Function(int) tappedIndex;
  const pagg1({Key? key, required this.tappedIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 215, 202, 199),
          body: Column(
            // mainAxisAl    ignment: MainAxisAlignment.center,
            children: [
              Container(
                // decoration: BoxDecoration(),
                padding: EdgeInsets.only(top: 50),
                child: Image.asset("assets/images/page1.png"),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Yoga Surge',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 26),
                child: Center(
                  child: Text(
                    'Welcome to Yoga World',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 22),
                child: Center(
                  child: Text(
                    'Inhale the future, exhale the past',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 430, right: 240),
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex(3);
                    },
                    child: Text(
                      "Skip",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          )),
    );
  }
}
