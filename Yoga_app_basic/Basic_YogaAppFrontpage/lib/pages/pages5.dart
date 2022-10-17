import 'package:final_project/homepage.dart';
import 'package:final_project/pages/pages4.dart';
import 'package:flutter/material.dart';

class pagg5 extends StatelessWidget {
  final Function(int) tappedIndex;
  const pagg5({Key? key, required this.tappedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome',
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: new Padding(
                padding: const EdgeInsets.only(left: 50),
                child: new Text("Welcome"),
              ),
              backgroundColor: Color.fromARGB(255, 215, 202, 199),
              automaticallyImplyLeading: false,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.orange),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
              ),
            ),
            body: Column(
                // mainAxisAl    ignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // decoration: BoxDecoration(),
                    padding: EdgeInsets.only(top: 50, left: 5),
                    child: Image.asset("assets/images/welcome.png"),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Sai Ganesh',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Center(
                      child: Text(
                        'I am a 2nd Year Btech Undegrad at \n Amrita Vishwa Vidyapeetam, Amritapuri. \n Degree in : ECE.',
                        style: TextStyle(fontSize: 19),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ])));
  }
}
