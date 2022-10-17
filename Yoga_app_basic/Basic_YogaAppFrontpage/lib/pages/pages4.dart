import 'package:flutter/material.dart';

class pagg4 extends StatelessWidget {
  final Function(int) tappedIndex;
  const pagg4({Key? key, required this.tappedIndex}) : super(key: key);
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
                child: Image.asset("assets/images/page4.png"),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Meditation',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    'The longest journey of any person\n is the journey inward.',
                    style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 330, left: 240),
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex(4);
                    },
                    child: Text(
                      "Get Started",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          )),
    );
  }
}
