import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/services/pref_service.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'danielvidal@gmail.com' && _pass == '123') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
    //print('login: $_login, pass: $_pass');
  }
}
