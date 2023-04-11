import 'dart:io';


class Note{
  late int id;
  late String category;
  late String description;

  Note({ required this.id, required this.category, required this.description});

  Note.fromMap(Map<String, dynamic> item):
        id=item["id"], category= item["category"], description= item["description"];

  Map<String, Object> toMap(){
    return {'id':id, 'category': category, 'description': description};
  }
}




