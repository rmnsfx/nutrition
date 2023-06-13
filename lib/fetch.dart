import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Food {
  final int weight;
  final int id;
  final String title;

  Food({required this.weight, required this.id, required this.title});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      weight: json['weight'],
      title: json['title'],
      id: json['id'],
    );
  }
}

Future<List<Food>> fetchFood() async {

  //const jsn = '[{"title":"Овсянка","weight":50,"id":"8385ef33-5086-420a-94a7-51d5fc409201"},{"title":"Овощи","weight":150,"id":"23189ceb-e059-44a8-ba91-b1a9d31ac8b2"}]';

  final response = await http.get( Uri.parse("http://10.0.2.2:8000/api/food/") );

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    List<Food> food = jsonResponse.map((data) => Food.fromJson(data)).toList();
    return food;

    // var jsonResponse = jsonDecode(jsn)['0'] as List;
    // List<Food> tagObjs = jsonResponse.map((tagJson) => Food.fromJson(tagJson)).toList();

    // Iterable l = json.decode(response.body);
    // List<Food> posts = List<Food>.from(l.map((model)=> Food.fromJson(model)));

    //final parsed = json.decode(jsn).cast<String, dynamic>();
    //return Food.fromJson(parsed);

    // List<dynamic> parsedListJson = jsonDecode(jsn);
    // List<Food> itemsList = List<Food>.from(parsedListJson.map<Food>((dynamic i) => Food.fromJson(i)));

    //return tagObjs;

  } else {
    throw Exception('Unexpected error occured!');
  }
}
