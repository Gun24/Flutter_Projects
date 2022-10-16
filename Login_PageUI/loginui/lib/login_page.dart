import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'signin_page.dart';

class loginp extends StatelessWidget {
  const loginp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/gundesign.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "HELLO",
                        textStyle: TextStyle(
                            fontFamily: 'Dune',
                            fontSize: 38,
                            color: Color.fromARGB(255, 152, 236, 190)),
                        textAlign: TextAlign.right,
                      )
                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
                Center(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "Cadet",
                          textStyle: TextStyle(
                              fontFamily: 'Dune',
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(255, 152, 236, 190)),
                          textAlign: TextAlign.right,
                        )
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                  Center(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 450),
                        child: ElevatedButton(
                            child: Text(
                              "Get Started",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const signin()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(
                                  right: 40, left: 40, top: 20, bottom: 20),
                              textStyle: TextStyle(
                                  fontFamily: 'Dune',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              primary: Color.fromARGB(255, 36, 35, 36),
                              onPrimary: Color.fromARGB(237, 180, 239, 239),
                              elevation: 60,
                              shadowColor: Color.fromARGB(255, 199, 3, 234),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            )),
                      )
                    ]),
                  )
                ]))
              ],
            ),
          ),
        ));
  }
}

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                hintText: 'Email',
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
            )
          ],
        ),
      ),
    ));
  }
}
