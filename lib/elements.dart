

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final mealtime = <String>['Завтрак', 'Ранний перекус', 'Обед', 'Полдник', 'Ужин', 'Поздний перекус'];
final icons = <IconData>[ Icons.free_breakfast, Icons.fastfood, Icons.restaurant, Icons.local_pizza, Icons.local_dining, Icons.local_bar];
final time = <String>['8.00', '11.00', '14.00', '16.00', '19.00', '22.00'];
final foodElements = <String>['Белки', 'Жиры', 'Углеводы', 'Клетчатка'];
final protein = <String>['Яйцо куриное', 'Куриное филе', 'Говядина', 'Рыба'];
final lipid = <String>['Авокадо', 'Орех грецкий', 'Масло льняное', 'Масло оливковое', 'Семена льна'];
final carbs = <String>['Рис', 'Гречка', 'Овсянка', 'Нут', 'Хлебцы', 'Фрукты', 'Чёрный шоколад'];
final fibre = <String>['Помидор', 'Морковь', 'Свекла', 'Картофель', 'Капуста', 'Лук', 'Шпинат'];
final breakfast = <String>['Помидор', 'Морковь', 'Свекла', 'Картофель', 'Капуста', 'Лук', 'Шпинат'];

class Menu {
  //late int id;
  String name = "";
  int weightMin = 0;
  int weightMax = 0;
  int quantity = 0;

  Menu(this.name, this.weightMin, this.weightMax, this.quantity);
}

List<Menu> menuBreakFast = [
  Menu("Овсянка", 30, 50, 1),
  Menu("Филе", 30, 50, 1),
  Menu("Овощи", 30, 50, 1),
  Menu("Масло", 30, 50, 1),
];





