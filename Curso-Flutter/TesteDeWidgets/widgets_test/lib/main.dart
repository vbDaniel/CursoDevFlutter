import 'package:flutter/material.dart';
import 'package:widgets_test/pags/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // tira a barrinha chata de debug
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
