import 'package:flutter/material.dart';
import 'elements.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition plan',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'План питания'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
