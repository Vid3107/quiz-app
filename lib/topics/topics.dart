import 'package:flutter/material.dart';
import 'package:project_1/services/firestore.dart';
import 'package:project_1/shared/bottom_nav.dart';
import 'package:project_1/shared/loading.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirestoreService().getTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return Text('Errro: ${snapshot.error}');
        } else if (snapshot.hasData) {
          var topics = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple[200],
              title: const Text('Topics'),
            ),
            body: GridView.count(
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: topics.map((topic) => Text(topic.title)).toList(),
            ),
            bottomNavigationBar: const BottomNavBar(),
          );
        } else {
          return Text('da');
        }
      },
    );
  }
}
