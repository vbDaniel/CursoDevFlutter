import 'package:flutter/material.dart';
import 'package:navigation_pages/one_page.dart';
import 'two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(_) => const OnePage(),
        '/twoPage':(_) => const TwoPage(),
      },
    );
  }
}

