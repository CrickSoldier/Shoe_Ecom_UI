import 'package:ecom_shoe/screens/home/description.dart';

import 'components/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          // title: const Text("Home"),
          // backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),

          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            const Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
            // const Icon(Icons.menu),
            SizedBox(width: size.width / 20)
          ],
        ),
        floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Description()))
                  },
              backgroundColor: Color.fromARGB(255, 247, 108, 15),
              child: Image.asset("assets/icons/home.png")),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Body());
  }
}
