import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';

class MeasurePage extends StatelessWidget {
  const MeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Измерения"),
        backgroundColor: Colors.indigo.shade100,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo.shade100,
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: measureParameters.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                  child: ExpansionTile(
                    //leading: Icon(icons[index]),
                    // trailing: Row(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                    //   ],
                    // ),
                    title: Text('${measureParameters[index]}'),
                    //subtitle: Text('${time[index]}'),
                    children: <Widget>[
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                    ],
                  ));
            }),
      ),
    );
  }
}
