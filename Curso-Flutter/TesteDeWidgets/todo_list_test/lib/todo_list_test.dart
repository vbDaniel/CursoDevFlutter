// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> task = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tarefa!'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 400,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemCount: task.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onLongPress: () {
                      setState(() {
                        task.removeAt(index);
                      });
                    },
                    title: Text(task[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {
              if (_textEditingController.text.isNotEmpty) {
                setState(() {
                  task.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
              print(task);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(248, 255, 48, 1),
            onPressed: () {
              setState(() {
                task = [];
              });
              _textEditingController.clear();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
