import 'package:flutter/material.dart';
import 'package:splash_screen_e_login_page/controller/login_controller.dart';

class CustomButton extends StatelessWidget {
  final LoginController loginController;

  const CustomButton({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Falha ao realizar Login!'),
                        duration: Duration(seconds: 5),
                        // action:  SnackBarAction(
                        //   label: 'ACTION',
                        //   onPressed: (){

                        //   },
                        // ),
                      ),
                    );
                  }
                });
              },
              child: const Text('Login'),
            ),
    );
  }
}
