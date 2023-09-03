import 'package:flutter/material.dart';
import 'package:project_1/home/fetchpost.dart';
import 'package:project_1/shared/bottom_nav.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({super.key});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  late Future<Map<String, dynamic>> _jsonResponse;
  @override
  void initState() {
    super.initState();
    _jsonResponse = FetchPost().fetchPost();
  }

  Future<void> _fetchJoke() async {
    setState(() {
      _jsonResponse = FetchPost().fetchPost();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch api'),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: FutureBuilder<Map<String, dynamic>>(
                future: _jsonResponse,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final joke = snapshot.data?['joke'];
                    final category = snapshot.data?['category'];
                    return Column(
                      children: [
                        Text('$joke'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '$category',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => _fetchJoke(),
              child: const Text('New Superhero'),
            )
          ],
        ),
      ),
    );
  }
}
