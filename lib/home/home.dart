import 'package:flutter/material.dart';
import 'package:project_1/login/login.dart';
import 'package:project_1/profile/profile.dart';
import 'package:project_1/topics/topics.dart';
import 'package:project_1/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        } else if (snapshot.hasError) {
          return const Text('Error');
        } else if (snapshot.hasData) {
          return const TopicsScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
