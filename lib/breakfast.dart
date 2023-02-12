import 'package:flutter/material.dart';

import 'elements.dart';

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
                leading: Icon(Icons.eco),
                trailing: Icon(Icons.add),
                title:  Text('${foodElements[index]}'),
                //subtitle: Text('${time[index]}'),
              ),
              // child: Column(
              //   children: [
              //       Text("Место работы", style: TextStyle(fontSize: 18))
              //   ]
              // )
          );
        }
      )
    );
  }
}