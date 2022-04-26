import 'package:flutter/material.dart';
import 'package:navigation_pages/two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const TwoPage(args: 'Loucuras',)));
          },
          child: const Text('Go to page two!'),
        )
      ),
    );
  }
}
