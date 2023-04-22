import 'package:flutter/material.dart';
import 'Pages/Home.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: "English"
      ),
    )
  );
}
