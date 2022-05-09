import 'package:flutter/material.dart';
import 'one_page.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.deepOrange,
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop('Return');
          } else {
            print(
             'Nao é possivel fazer o pop pois nao há para onde ele voltar');
          }
        },
        child: Text('Go to page one! $args'),
      )),
    );
  }
}
