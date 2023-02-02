import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Правильное питание'),
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
  final mealtime = <String>['Завтрак', 'Обед', 'Перекус', 'Ужин', 'Перекус'];
  final time = <String>['8.00', '14.00', '16.00', '19.00', '21.00'];

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
            child: ListTile(
              onTap: () => print(mealtime[index]),
              leading: Icon(Icons.eco),
              trailing: Icon(Icons.keyboard_arrow_right),
              title:  Text('$index- ${mealtime[index]}'),
              subtitle: Text('${time[index]}'),
            )

          );
        }
      ),



    );
  }
}
