import 'dart:convert';

import 'package:flutter/material.dart';

import '../model/posts_model.dart';

import 'package:http/http.dart' as http;

class PostController{
  ValueNotifier<List<Post>> posts =
      ValueNotifier<List<Post>>([]); //Estrutura de algo volátio
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    
    var client = http.Client();
    inLoader.value = true;
    try {
      var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      var decodedResponse = jsonDecode(response.body) as List;
      posts.value = decodedResponse
          .map((e) => Post.fromJson(e))
          .toList(); //recupera os valores da api e transforma numa lista de 'Posts' de acordo com os parametros passados na class Post
    await Future.delayed(const Duration(seconds: 3));
    } finally {
      client.close();
      inLoader.value = false;
    }
  }
}