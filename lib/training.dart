import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';



class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Тренировки"),
      ),
      body: ListView.builder(
          itemCount: day.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                child: ExpansionTile(
                  leading: Icon(iconsTrain[0]),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                  title:  Text('${day[index]}'),
                  //subtitle: Text('${time[index]}'),
                  children: <Widget>[
                    if( index == 0 )
                      for (var item in trainingMonday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),
                    if( index == 1 )
                      for (var item in trainingTuesday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),
                    if( index == 2 )
                      for (var item in trainingWednesday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),                    if( index == 3 )
                    if( index == 3 )
                      for (var item in trainingThursday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),                    if( index == 4 )
                    if( index == 4 )
                      for (var item in trainingFriday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),                    if( index == 5 )
                    if( index == 5 )
                      for (var item in trainingSaturday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),
                    if( index == 6 )
                      for (var item in trainingSunday)
                        ListTile(title: Text(item.name), subtitle: Text("Вес: " + item.weight.toString() + item.units +
                            "; Подходов: " + item.touch.toString() + "; Повторов: " + item.quantity.toString()),),
                  ],
                )

            );
          }
      ),

    );
  }
}