import 'package:diaryapp/Login/Signup/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBording1 extends StatelessWidget {
  OnBording1({super.key});
  final pageController = PageController();
  List images = ["images/amico.svg", "images/cuate.svg"];
  List text1 = ["Take Notes", "To-dos"];
  List text2 = [
    "Quickly capture what’s on your mind",
    " out your day-to-day tasks"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: PageView.builder(
          controller: pageController,
          itemCount: 2,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                SvgPicture.asset(images[index]),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  text1[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(text2[index]),

                const SizedBox(
                  height: 80,
                ),
                // Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 2,
                  axisDirection: Axis.horizontal,
                  effect: const ExpandingDotsEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 10.0,
                    dotHeight: 7.0,
                    // paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Color(0xffE2E8F0),
                    activeDotColor: Color(0xffFFB347),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFB347),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minimumSize: const Size(double.infinity, 65),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
              ]),
            );
          }),
    ));
  }
}
