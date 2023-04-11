import 'package:flutter/material.dart';
import 'package:nutrition/thirdSnack.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'dart:async';



class BreakfastRoute extends StatelessWidget {

  const BreakfastRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Завтрак'),
      ),
      body: ListView.builder(
        itemCount: foodElements.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
              elevation: 2,
              child: ExpansionTile(
                title:  Text('${foodElements[index]}'),
                //leading: Icon(Icons.eco),
                //trailing: Icon(Icons.add),
                //subtitle: Text('${}'),
                children: <Widget>[
                  if( index == 0 )
                    for (var name in protein)
                      ListTile(title: Text(name)),
                  if( index == 1 )
                    for (var name in lipid)
                      ListTile(title: Text(name)),
                  if( index == 2 )
                    for (var name in carbs)
                      ListTile(title: Text(name)),
                  if( index == 3 )
                    for (var name in fibre)
                      ListTile(title: Text(name)),
                ],

              ),

          );
        }
      )
    );
  }
}