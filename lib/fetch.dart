import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Food {
  final int weight;
  final String id;
  final String title;

  Food({required this.weight, required this.id, required this.title});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      weight: json['weight'] ,
      title: json['title'],
      id: json['id'],
    );
  }
}

Future<List<Food>> fetchFood() async {

  final response = await http.get( Uri.parse("http://10.0.2.2:8000/api/food/") );

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(Utf8Decoder().convert(response.bodyBytes));
    List<Food> food = jsonResponse.map((data) => Food.fromJson(data)).toList();
    return food;

  } else {
    throw Exception('Unexpected error occured!');
  }
}
