import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';



class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Питание"),
      ),
      body: ListView.builder(
          itemCount: mealtime.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                child: ExpansionTile(
                  leading: Icon(icons[index]),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                  title:  Text('${mealtime[index]}'),
                  subtitle: Text('${time[index]}'),
                  children: <Widget>[
                    if( index == 0 )
                      for (var item in menuBreakFast)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),
                    if( index == 1 )
                      for (var item in menuEarlySnack)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),
                    if( index == 2 )
                      for (var item in menuLunch)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),
                    if( index == 3 )
                      for (var item in menuSnack)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),
                    if( index == 4 )
                      for (var item in menuDinner)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),
                    if( index == 5 )
                      for (var item in menuDinner)
                        ListTile(title: Text(item.name), subtitle: Text(item.weightMin.toString() + " - " + item.weightMax.toString() + item.units),),

                  ],
                )

            );
          }
      ),

    );
  }
}