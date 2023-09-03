import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/services/auth.dart';
import 'package:project_1/topics/topics.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            Flexible(
              child: LoginButton(
                text: 'Continue as guest',
                icon: FontAwesomeIcons.userNinja,
                color: Colors.deepOrangeAccent,
                loginMethod: AuthService().anonLogin,
              ),
            ),
            Flexible(
              child: LoginButton(
                text: 'Sign In with Google',
                icon: FontAwesomeIcons.google,
                color: Colors.deepPurpleAccent,
                loginMethod: AuthService().googleLogin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        label: Text(text),
        onPressed: () => loginMethod(),
      ),
    );
  }
}
