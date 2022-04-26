// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:widgets_test/pags/otherPags/page_one.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Teste Widgets!'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text('D'),
                  backgroundColor: Colors.amber,
                ),
                accountName: Text('Daniel Vidal'),
                accountEmail: Text('danielvidalbicalho15@gmail.com')),
            ListTile(
              title: Text('Minha Viagems'),
              trailing: Icon(Icons.card_travel),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
            indexNavigationBar = 0;
          });
              },
            ),
            ListTile(
              title: Text('Ir de Bicicleta'),
              trailing: Icon(Icons.pedal_bike),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                 setState(() {
            indexNavigationBar = 1;
          });
              },
            ),
            ListTile(
              title: Text('Ir de Metrô'),
              trailing: Icon(Icons.train_rounded),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                 setState(() {
            indexNavigationBar = 2;
          });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          PageOne(),
          Container(
            color: Color.fromARGB(255, 8, 182, 8),
          ),
          Container(
            color: Colors.cyan,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigationBar,
        onTap: (int index) {
          setState(() {
            indexNavigationBar = index;
          });
          indexNavigationBar = index;
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Viagens",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pedal_bike),
            label: "Bike",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train_rounded),
            label: "Metrô",
          ),
        ],
      ),
    );
  }
}
