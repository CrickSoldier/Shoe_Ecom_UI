import 'package:ecom_shoe/constants.dart';
import 'package:flutter/material.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          Text(
            "Men's Shoes",
            style: TextStyle(color: kTextColor),
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          )
        ])
      ],
    );
  }
}
