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

  final String headtext;
  final String text;
  ItemsRoute({super.key, required this.headtext, required this.text});

  final SqliteService dbManager = SqliteService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(text + ' на ' + headtext),
        ),
        body: FutureBuilder(
            future: dbManager.getItems(),
            builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),);
            } else {
              List<Note>? notesData = snapshot.data;
              return ListView.builder(
                  itemCount: notesData?.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(notesData![index].description),),
                    );
                  }
              );
            }
            }
        )
    );
  }

}