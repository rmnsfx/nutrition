import 'dart:async';
import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';
import 'fetch.dart';


//final ref = FirebaseFirestore.instance.collection("user1");

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Тренировки"),
        backgroundColor: Colors.cyan
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("user1").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {

            if(snapshot.hasData) {
              final List<DocumentSnapshot> documents = snapshot.data!.docs;
              Map<String, dynamic> dataMap = snapshot.data!.docs[0].data() as Map<String, dynamic>;
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

                            if( index == 0 ) ...{
                              if( dataMap.containsKey('mon') )
                              for (var item in documents[0]['mon'].entries.toList()) ...{
                                ListTile( title: Text(item.key), subtitle: Row(
                                  children: [
                                    if( item.value != "" )
                                    for( var subItem in item.value.entries.toList())
                                      Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                  ],
                                ) ),
                              }
                            },

                            if( index == 1 ) ...{
                              if( dataMap.containsKey('tue') )
                              for (var item in documents[0]['tue'].entries.toList()) ...{
                                ListTile( title: Text(item.key), subtitle: Row(
                                  children: [
                                    if( item.value != "" )
                                    for( var subItem in item.value.entries.toList())
                                      Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                  ],
                                ) ),
                              }
                            },

                            if( index == 2 ) ...{
                              if( dataMap.containsKey('wed') )
                                for (var item in documents[0]['wed'].entries.toList()) ...{
                                  ListTile( title: Text(item.key), subtitle: Row(
                                    children: [
                                      if( item.value != "" )
                                      for( var subItem in item.value.entries.toList())
                                        Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                    ],
                                  ) ),
                                }
                            },

                            if( index == 3 ) ...{
                              if( dataMap.containsKey('thur') )
                                for (var item in documents[0]['thur'].entries.toList()) ...{
                                  ListTile( title: Text(item.key), subtitle: Row(
                                    children: [
                                      if( item.value != "" )
                                      for( var subItem in item.value.entries.toList())
                                        Text(subItem.key.toString() + ": " + subItem.value.toString() + "; "),
                                    ],
                                  ) ),
                                }
                            },

                            if( index == 4 ) ...{
                              if( dataMap.containsKey('fri') )
                                for (var item in documents[0]['fri'].entries.toList()) ...{
                                  ListTile( title: Text(item.key), subtitle: Row(
                                    children: [
                                      if( item.value != "" )
                                      for( var subItem in item.value.entries.toList())
                                        Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                    ],
                                  ) ),
                                }
                            },

                            if( index == 5 ) ...{
                              if( dataMap.containsKey('sat') )
                                for (var item in documents[0]['sat'].entries.toList()) ...{
                                  ListTile( title: Text(item.key), subtitle: Row(
                                    children: [
                                      if( item.value != "" )
                                      for( var subItem in item.value.entries.toList())
                                        Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                    ],
                                  ) ),
                                }
                            },


                            if( index == 6 ) ...{
                              if( dataMap.containsKey('sun') )
                                for (var item in documents[0]['sun'].entries.toList()) ...{
                                  ListTile( title: Text(item.key), subtitle: Row(
                                    children: [
                                      if( item.value != "" )
                                      for( var subItem in item.value.entries.toList())
                                        Text(subItem.key + ": " + subItem.value.toString() + "; "),
                                    ],
                                  ) ),
                                }
                            },


                          ],
                        )

                    );
                  }
              );
            }
            else {
              return const Center(child: CircularProgressIndicator());
            }
          }
        ),
      ),

    );
    }
}


