import 'package:flutter/material.dart';

class pagg3 extends StatelessWidget {
  final Function(int) tappedIndex;
  const pagg3({Key? key, required this.tappedIndex}) : super(key: key);
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
                child: Image.asset("assets/images/page3.png"),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Cycling',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    'You cannot always control what\n goes on outside. But you can\nalways control what goes on inside',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 370, right: 240),
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
