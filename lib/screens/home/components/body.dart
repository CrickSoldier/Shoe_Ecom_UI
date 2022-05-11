import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Advertisment(size: size),
                SizedBox(
                  height: size.height * .01,
                ),
                CategoryScroll(size: size),
                SizedBox(
                  height: size.height * .01,
                ),
                CategoryDivider(),
                SizedBox(
                  height: size.height * .01,
                ),
                ProductGrid(size: size),
              ],
            ),
          )),
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        product(
            size: size,
            title: "Creter Impact",
            image: "assets/images/7.png",
            price: 450),
        product(
            size: size,
            title: "Office Wear",
            image: "assets/images/1.png",
            price: 599),
        product(
            size: size,
            title: "Running Boot",
            image: "assets/images/2.png",
            price: 550),
        product(
            size: size,
            title: "Branded Impact",
            image: "assets/images/3.png",
            price: 750),
        product(
            size: size,
            title: "Basketball",
            image: "assets/images/4.png",
            price: 499),
      ],
    );
  }
}

class CategoryDivider extends StatelessWidget {
  const CategoryDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Men's",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: Container(
            height: size.height * .09,
            // color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Categories(
                  catergory: "Lifestyle",
                  icon: "assets/images/nike.png",
                  press: () => {},
                ),
                Categories(
                  catergory: "Basketball",
                  icon: "assets/images/1.png",
                  press: () => {},
                ),
                Categories(
                  catergory: "Running",
                  icon: "assets/images/2.png",
                  press: () => {},
                ),
                Categories(
                  catergory: "Sport",
                  icon: "assets/images/3.png",
                  press: () => {},
                ),
                Categories(
                  catergory: "Branded",
                  icon: "assets/images/4.png",
                  press: () => {},
                ),
                Categories(
                  catergory: "Casual",
                  icon: "assets/images/5.png",
                  press: () => {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({
    Key? key,
    required this.size,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  final Size size;
  final String title, image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: size.height * .35,
            width: size.width * .5,
            // color: Colors.black,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    image,
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text(
                  "Mens's Shoes",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "₹ $price",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.red,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.catergory,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String catergory, icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 108, 15),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(icon),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              catergory,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Advertisment extends StatelessWidget {
  const Advertisment({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment(0.9, 0.1),
                end: Alignment(0.9, 0.8),
                colors: [
                  Colors.black,
                  Colors.brown,
                ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Release",
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Nike Air \n Max 90",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Shop Now",
                    ),
                  )
                ],
              ),
            ),
            Image.asset("assets/images/nike.png")
          ],
        ));
  }
}
