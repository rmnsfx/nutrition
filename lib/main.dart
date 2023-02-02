import 'package:flutter/material.dart';
import 'package:nutrition/secondSnack.dart';
import 'package:nutrition/thirdSnack.dart';
import 'breakfast.dart';
import 'dinner.dart';
import 'firstSnack.dart';
import 'lunch.dart';


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
  final mealtime = <String>['Завтрак', 'Ранний перекус', 'Обед', 'Полдник', 'Ужин', 'Поздний перекус'];
  final time = <String>['8.00', '11.00', '14.00', '16.00', '19.00', '22.00'];

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
              onTap: () {
                if(index == 0) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BreakfastRoute()));
                }
                if(index == 1) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FirstSnackRoute()));
                }
                if(index == 2) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LunchRoute()));
                }
                if(index == 3) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondSnackRoute()));
                }
                if(index == 4) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DinnerRoute()));
                }
                if(index == 5) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ThirdSnackRoute()));
                }

                },
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
