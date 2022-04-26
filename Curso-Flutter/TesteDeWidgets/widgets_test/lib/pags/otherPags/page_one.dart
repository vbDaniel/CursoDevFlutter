import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  //shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "Hello World!!!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    height: 200,
                    width: (MediaQuery.of(context).size.width) / 2,
                    child: Text('Cont1'),
                  ),
                  Container(
                    color: Colors.pink,
                    height: 200,
                    width: (MediaQuery.of(context).size.width) / 2,
                    child: Text('Cont2'),
                  ),
                ],
              )
            ],
          );
  }
}