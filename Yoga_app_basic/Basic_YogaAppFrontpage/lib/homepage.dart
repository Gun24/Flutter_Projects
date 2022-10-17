import 'package:final_project/pages/pages1.dart';
import 'package:final_project/pages/pages2.dart';
import 'package:final_project/pages/pages3.dart';
import 'package:final_project/pages/pages4.dart';
import 'package:final_project/pages/pages5.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 202, 199),
        body: Column(
          children: [
            Expanded(
              child: PageView(controller: _controller, children: [
                pagg1(
                  tappedIndex: (p0) {
                    if (p0 == 3) {
                      _controller.jumpToPage(3);
                    }
                  },
                ),
                pagg2(tappedIndex: (p0) {
                  if (p0 == 3) {
                    _controller.jumpToPage(3);
                  }
                }),
                pagg3(tappedIndex: (p0) {
                  if (p0 == 3) {
                    _controller.jumpToPage(3);
                  }
                }),
                pagg4(tappedIndex: (p0) {
                  if (p0 == 4) {
                    _controller.jumpToPage(4);
                  }
                }),
                pagg5(tappedIndex: (p0) {
                  if (p0 == 3) {
                    _controller.jumpToPage(3);
                  }
                })
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: WormEffect(
                    activeDotColor: Colors.black, dotWidth: 12, dotHeight: 12),
              ),
            )
          ],
        ));
  }
}
