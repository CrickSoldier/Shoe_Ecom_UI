import 'package:ecom_shoe/constants.dart';
import 'package:ecom_shoe/screens/home/homePage.dart';
import 'package:flutter/material.dart';

class Begin extends StatelessWidget {
  const Begin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.9, 0.4),
              end: Alignment(0.9, 0.9),
              colors: [
            Colors.black,
            Color.fromARGB(255, 223, 21, 105),
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(size.aspectRatio),
                    child: const Image(
                      image: AssetImage('assets/images/nike.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "LIVE YOUR \n PERFECT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Smart, gorgeous & fasionable \ncollection makes you cool",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(206, 255, 255, 255),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * .1,
                  ),
                  const Center(
                      child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                  )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kTextColor, // Background color
                      ),
                      child: const Text("Get Started",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      }),
                ],
              ),
            ),
          )),
    );
  }
}
