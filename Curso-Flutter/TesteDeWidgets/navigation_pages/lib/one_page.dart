import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigation_pages/two_page.dart';
import 'package:navigation_pages/widgets/custom_button_widgets.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valueRandom = ValueNotifier<int>(0); //Estrutura de algo volátio

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      
      valueRandom.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ValueListenableBuilder(valueListenable: valueRandom, builder: (_,value,__) =>         
            Text(
            'Valor Aleatório = $value', 
            style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          CustomButtonWidgets(
          //disable: true,
          onPressed: () => random(),
          title: 'Button',
          titleSize: 20,
          ),
        ],
      )),
    );
  }
}
