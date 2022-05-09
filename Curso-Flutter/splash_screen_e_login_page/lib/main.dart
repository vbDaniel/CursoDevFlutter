import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/pages/details_page.dart';
import 'package:splash_screen_e_login_page/pages/home_page.dart';
import 'package:splash_screen_e_login_page/pages/splash_page.dart';

import 'pages/login_page.dart';

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
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
      },
    );
  }
}
