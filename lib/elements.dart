
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
final day = <String>['Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье'];
final iconsTrain = <IconData>[ Icons.add_a_photo];

class Menu {
  //late int id;
  String name = "";
  int weightMin = 0;
  int weightMax = 0;
  int quantity = 0;
  String units = "";

  Menu(this.name, this.weightMin, this.weightMax, this.quantity, this.units);
}

List<Menu> menuBreakFast = [
  Menu("Овсянка", 50, 70, 1, " гр."),
  Menu("Филе куриное", 100, 150, 1, " гр."),
  Menu("Овощи", 100, 150, 1, " гр."),
  Menu("Масло оливковое", 10, 15, 1, " гр."),
];

List<Menu> menuEarlySnack= [
  Menu("Яйцо", 2, 3, 1, " шт."),
  Menu("Овощи", 200, 250, 1, " гр."),
];

List<Menu> menuLunch = [
  Menu("Крупа", 70, 80, 1, " гр."),
  Menu("Филе куриное", 100, 150, 1, " гр."),
  Menu("Овощи", 200, 250, 1, " гр."),
];

List<Menu> menuSnack = [
  Menu("Овощи", 200, 250, 1, " гр."),
  Menu("Филе куриное", 100, 150, 1, " гр."),
];

List<Menu> menuDinner = [
  Menu("Крупа", 70, 80, 1, " гр."),
  Menu("Филе куриное", 100, 150, 1, " гр."),
  Menu("Овощи", 200, 250, 1, " гр."),
  Menu("Масло оливковое", 10, 15, 1, " гр."),
];

List<Menu> menuLateSnack = [
  Menu("Филе куриное", 70, 80, 1, " гр."),
  Menu("Овощи", 200, 250, 1, " гр."),
  Menu("Масло оливковое", 10, 15, 1, " гр."),
];


class Training {
  //late int id;
  String name = "";
  int weight = 0;
  int touch = 0;
  int quantity = 0;
  String units = "";
  String url = "";

  Training(this.name, this.weight, this.touch, this.quantity, this.units, this.url);
}

List<Training> trainingMonday = [
  Training("Выпады", 5, 4, 15, " кг.", ""),
  Training("Жим ногами", 130, 4, 15, " кг.", ""),
  Training("Разгибания ног", 130, 4, 15, " кг.", ""),
];

List<Training> trainingTuesday = [
  Training("Отдых", 0, 0, 0, "", ""),
];

List<Training> trainingWednesday = [
  Training("Гравитрон", 85, 4, 15, " кг.", ""),
  Training("Разводка рук через стороны", 5, 4, 15, " кг.", ""),
  Training("Жим вверх", 12, 4, 15, " кг.", ""),
  Training("Тяга нижнего блока к поясу сидя", 12, 4, 15, " кг.", ""),
  Training("Пуловер в блочном тренажере", 12, 4, 15, " кг.", ""),
];

List<Training> trainingThursday = [
  Training("Отдых", 0, 0, 0, "", ""),
];

List<Training> trainingFriday = [
  Training("Жим гантелей под углом", 5, 4, 15, " кг.", ""),
  Training("Жим в хаммере", 130, 4, 15, " кг.", ""),
  Training("Разводка гантелей", 130, 4, 15, " кг.", ""),
  Training("Отжимания на брусьях", 130, 4, 15, " кг.", ""),
];

List<Training> trainingSaturday = [
  Training("Отдых", 0, 0, 0, "", ""),
];

List<Training> trainingSunday = [
  Training("Отдых", 0, 0, 0, "", ""),
];