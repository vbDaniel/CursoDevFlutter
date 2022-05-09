import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/components/login/custom_login_buttom.dart';
import 'package:splash_screen_e_login_page/controller/login_controller.dart';
import 'package:splash_screen_e_login_page/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _controller = LoginController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomTextField(label: 'Login', onChanged: _controller.setLogin,),
            CustomTextField(label: 'Senha', onChanged: _controller.setPass, obscureText: true,),
            const SizedBox(
              height: 15,
            ),
            CustomButton(loginController: _controller,),
          ],
        ),
      ),
    );
  }
}
