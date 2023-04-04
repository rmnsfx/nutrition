import 'package:flutter/material.dart';
import 'package:nutrition/sqlite_service.dart';
import 'package:nutrition/thirdSnack.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

import 'models.dart';

class ItemsRoute extends StatelessWidget {
  ItemsRoute({super.key});

  final SqliteService dbManager = new SqliteService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Завтрак'),
        ),
        body: FutureBuilder(
            future: dbManager.getItems(),
            builder: (context, snapshot) {
              var modelList = snapshot.data as List<Note>?;
              return ListView.builder(
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                        child: ListTile(title: Text("dbManager.getItems()"),),
                    );
                  }
              );
            }
        )
    );
  }

}