import 'package:flutter/material.dart';
import 'package:project_1/services/auth.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple[200], title: Text('Profile')),
      body: ElevatedButton(
        child: Text('Sign Out'),
        onPressed: () async {
          await AuthService().signOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },
      ),
    );
  }
}
