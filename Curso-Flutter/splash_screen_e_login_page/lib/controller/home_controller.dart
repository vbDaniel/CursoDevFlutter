import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/model/post_model.dart';
import 'package:splash_screen_e_login_page/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);
  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
