import 'package:ecom_shoe/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * .02, horizontal: size.width * 0.05),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Men's Shoes",
                        style: TextStyle(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      )
                    ]),
                SizedBox(
                  height: size.height * .05,
                ),
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Nike Air Max Pre-Day",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(131, 0, 3, 173),
                          ),
                          const Text(
                            " 5.0 ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "(1120 Reviews)",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          text:
                              "Taking the classic look of Heritage Nike Running into a new real, the Nike Air Max Pre-Day bring....",
                          style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              fontSize: 13),
                          children: const <InlineSpan>[
                            TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: const [
                          Text(
                            "Select Color :",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SafeArea(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SelectColor(
                                size: size, image: "assets/images/1.png"),
                            SelectColor(
                                size: size, image: "assets/images/2.png"),
                            SelectColor(
                                size: size, image: "assets/images/3.png"),
                            SelectColor(
                                size: size, image: "assets/images/4.png"),
                            SelectColor(
                                size: size, image: "assets/images/5.png"),
                            SelectColor(
                                size: size, image: "assets/images/6.png"),
                            SelectColor(
                                size: size, image: "assets/images/7.png"),
                          ]),
                    )),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Size : ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              "IND",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * .02,
                            ),
                            Text(
                              "US",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.3),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * .02,
                            ),
                            Text(
                              "UK",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.3),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SafeArea(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizeWidget(
                                size: size,
                                showSize: 08,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 09,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 10,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 11,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 12,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 13,
                              ),
                              SizeWidget(
                                size: size,
                                showSize: 14,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * .15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.85),
                          borderRadius: BorderRadius.circular(35)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: "Price \n",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(.6)),
                                    children: const [
                                  TextSpan(
                                    text: "₹ 1399.50",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ])),
                            Container(
                              height: size.height * .06,
                              width: size.width * .40,
                              decoration: BoxDecoration(
                                  color: kTextColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  "Add to Bag",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    Key? key,
    required this.size,
    required this.showSize,
  }) : super(key: key);

  final Size size;
  final int showSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: size.height * .07,
      width: size.height * .07,
      decoration: BoxDecoration(
          color: kTextColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "$showSize",
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}

class SelectColor extends StatelessWidget {
  const SelectColor({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: size.height * .12,
      width: size.height * .12,
      decoration: BoxDecoration(
          border: Border.all(color: kTextColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(image),
    );
  }
}
