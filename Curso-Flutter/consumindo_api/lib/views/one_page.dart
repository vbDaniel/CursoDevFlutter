import 'package:consumindo_api/controller/post_controller.dart';
import 'package:flutter/material.dart';

import '../model/custom_button_widgets.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final PostController _controller = PostController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: Listenable.merge([_controller.posts, _controller.inLoader]),
              builder: (_, __) => _controller.inLoader.value
                  ? const CircularProgressIndicator(
                      color: Colors.black,
                    )
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.posts.value.length,
                      itemBuilder: (_, idx) => ListTile(
                        title: Text(_controller.posts.value[idx].title),
                      ),
                    ),
            ),
            CustomButtonWidgets(
              //disable: true,
              onPressed: () => _controller.callAPI(),
              title: 'Button',
              titleSize: 20,
            ),
          ],
        ),
      )),
    );
  }
}
