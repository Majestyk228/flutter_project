import 'dart:convert';
import 'dart:async';

import 'objects/fruit.dart';
import 'package:http/http.dart' as http;

void main() {
  late Future<Fruit> fruit;
  fruit = fetchAlbum();

  print(fruit);
}

Future<Fruit> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://www.fruityvice.com/api/fruit/pear'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Fruit.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Fruit');
  }
}

