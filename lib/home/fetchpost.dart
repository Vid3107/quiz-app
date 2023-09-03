import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

class FetchPost {
  Future<Map<String, dynamic>> fetchPost() async {
    const categories = ['Programming', 'Misc', 'Pun', 'Spooky'];
    final randomCategory = categories[Random().nextInt(categories.length)];
    const url = 'https://v2.jokeapi.dev/joke/Any?type=single';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    return json;
  }

  Future<Map<String, String>> getJokeAndCategory() async {
    final jsonResponse = await fetchPost();
    if (jsonResponse['error'] == false) {
      final joke = jsonResponse['joke'];
      final category = jsonResponse['category'];
      return {'joke': joke, 'category': category};
    } else {
      throw Exception('An error occurred');
    }
  }
}
