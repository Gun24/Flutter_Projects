import 'package:flutter/material.dart';

class pagg2 extends StatelessWidget {
  final Function(int) tappedIndex;
  const pagg2({Key? key, required this.tappedIndex}) : super(key: key);
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
                child: Image.asset("assets/images/page2.png"),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Healthy Freaks Exercise',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    'Letting go is the hardest asana',
                    style: TextStyle(fontSize: 19),
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
