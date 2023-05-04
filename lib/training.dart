import 'dart:async';
import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


final ref = FirebaseFirestore.instance.collection("user1");

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Тренировки"),
        backgroundColor: Colors.indigo.shade100,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("user1").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
          if(snapshot.hasData) {

            final List<DocumentSnapshot> documents = snapshot.data!.docs;
            final entryList = documents[0]['mon'].entries.toList();

            return ListView.builder(
                itemCount: day.length,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                      child: ExpansionTile(
                        leading: Icon(iconsTrain[0]),
                        //trailing: Icon(Icons.keyboard_arrow_right),
                        title: Text(day[index]),
                        //subtitle: Text('${time[index]}'),
                        children: <Widget>[

                          if( index == 0 )
                            for (var item in trainingMonday)
                              ListTile(

                                title: Text( entryList[0].key ),
                                subtitle: Text("Вес: ${item.weight}${item.units}; Подходов: ${item.touch}; Повторов: ${item.quantity}"),),

                          if( index == 1 )
                            for (var item in trainingTuesday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                          if( index == 2 )
                            for (var item in trainingWednesday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                          if( index == 3 )
                            for (var item in trainingThursday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                          if( index == 4 )
                            for (var item in trainingFriday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                          if( index == 5 )
                            for (var item in trainingSaturday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                          if( index == 6 )
                            for (var item in trainingSunday)
                              ListTile(title: Text(item.name), subtitle: Text(
                                  "Вес: ${item.weight}${item
                                      .units}; Подходов: ${item
                                      .touch}; Повторов: ${item.quantity}"),),
                        ],
                      )

                  );
                }
            );
          }
          else {
            return const CircularProgressIndicator();
          }
        }
      ),

    );
    }
}


