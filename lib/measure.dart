import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';

class MeasurePage extends StatelessWidget {
  const MeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Параметры тела"),
        backgroundColor: Colors.indigo.shade100,
      ),
      body: ListView.builder(
          itemCount: measureParameters.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                child: ExpansionTile(
                  //leading: Icon(icons[index]),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                  title: Text('${measureParameters[index]}'),
                  //subtitle: Text('${time[index]}'),
                  children: <Widget>[

                    // if (index == 0)
                    //   for (var item in menuBreakFast)
                    //     ListTile(
                    //       title: Text(item.name),
                    //       subtitle: Text(item.weightMin.toString() +
                    //           " - " +
                    //           item.weightMax.toString() +
                    //           item.units),
                    //     ),

                  ],
                ));
          }),
    );
  }
}
