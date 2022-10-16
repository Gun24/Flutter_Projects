import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 15.0,
                                      color: Color.fromARGB(255, 110, 5, 129)),
                                ],
                                color: Colors.white54,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Emyass',
                                  ),
                                ))),
                      ),
                    ),
                  ),
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 15.0,
                                          color: Color.fromARGB(
                                              255, 154, 67, 169)),
                                    ],
                                    color: Colors.white54,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                      ),
                                    )))))),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Text('Not a Member?'),
                    Text(
                      'Register next year',
                      style: TextStyle(
                          color: Color.fromARGB(255, 161, 3, 200),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SafeArea(
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                  IconButton(
                    padding: EdgeInsets.only(left: 50),
                    iconSize: 38,
                    color: Color.fromARGB(255, 4, 0, 0),
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ]))
              ],
            ),
          ),
        ));
  }
}
