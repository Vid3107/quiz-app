import 'package:project_1/about/about.dart';
import 'package:project_1/home/home.dart';
import 'package:project_1/login/login.dart';
import 'package:project_1/profile/profile.dart';
import 'package:project_1/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const Profile(),
  '/about': (context) => const About(),
};
