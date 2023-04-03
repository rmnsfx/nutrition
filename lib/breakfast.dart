import 'package:flutter/material.dart';
import 'package:nutrition/sqlite_service.dart';
import 'package:nutrition/thirdSnack.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'items.dart';


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
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ItemsRoute()));
                },
                leading: Icon(Icons.eco),
                //trailing: Icon(Icons.add),
                title:  Text('${foodElements[index]}'),
                //subtitle: Text('${}'),
              ),

          );
        }
      )
    );
  }
}