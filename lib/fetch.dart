import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Food {
  final int weight;
  final String id;
  final String title;
  final String foodid;

  Food({required this.weight, required this.id, required this.title, required this.foodid});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      weight: json['weight'],
      title: json['title'],
      id: json['id'],
      foodid: json['foodid'],
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


class Training {
  final int repeat;
  final String id;
  final String title;
  final int quantity;
  final String day;

  Training({required this.repeat, required this.id, required this.title, required this.quantity, required this.day});

  factory Training.fromJson(Map<String, dynamic> json) {
    return Training(
      repeat: json['repeat'],
      title: json['title'],
      id: json['id'],
      quantity: json['quantity'],
      day: json['day'],
    );
  }
}

Future<List<Training>> fetchTraining() async {

  final response = await http.get( Uri.parse("http://10.0.2.2:8000/api/training/") );

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(Utf8Decoder().convert(response.bodyBytes));
    List<Training> training = jsonResponse.map((data) => Training.fromJson(data)).toList();
    return training;

  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Measure {
  final String id;
  final String title;
  final String value;

  Measure({required this.id, required this.title, required this.value});

  factory Measure.fromJson(Map<String, dynamic> json) {
    return Measure(
      title: json['title'],
      id: json['id'],
      value: json['value'],
    );
  }
}

Future<List<Measure>> fetchMeasure() async {

  final response = await http.get( Uri.parse("http://10.0.2.2:8000/api/training/") );

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(Utf8Decoder().convert(response.bodyBytes));
    List<Measure> measure = jsonResponse.map((data) => Measure.fromJson(data)).toList();
    return measure;

  } else {
    throw Exception('Unexpected error occured!');
  }
}