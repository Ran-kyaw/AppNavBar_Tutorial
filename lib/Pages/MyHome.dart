
  import 'package:flutter/material.dart';

Widget myHome() {
    return ListView(children: [
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Home Page",
              style: TextStyle(fontSize: 45),
            )),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              "assets/images/slide-02.png",
              width: 300,
            )
          ],
        ),
      )
    ]);
  }