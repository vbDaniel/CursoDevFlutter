import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/controller/home_controller.dart';
import 'package:splash_screen_e_login_page/model/post_model.dart';
import 'package:splash_screen_e_login_page/repositories/home_repository_imp.dart';
import 'package:splash_screen_e_login_page/services/pref_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API"),
          shadowColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                PrefsService.isAuth();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => true);
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              //physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              //builder da cell
              itemBuilder: (_, idx) => Container(
                padding: const EdgeInsets.only(top: 3),
                child: ListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[idx].id.toString()),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  title: Text(list[idx].title),
                  onTap: () => Navigator.of(context)
                      .pushNamed('/details', arguments: list[idx]),
                ),
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          },
        ));
  }
}
