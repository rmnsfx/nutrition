import 'package:flutter/material.dart';
import 'elements.dart';
import 'food.dart';
import 'training.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Программа питания и тренировок',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //print("Card 1 Clicked");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FoodPage()));
              },
              child: SizedBox(
                height: 200,
                width: 200,

                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  //margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                  //child: Image.asset('assets/images/img1.png', fit: BoxFit.fill,),
                  child: const Align( alignment: Alignment.center, child: Text('Питание', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700)), ),
                  ),
              )
            ),
            GestureDetector(
                onTap: () {
                  //print("Card 2 Clicked");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TrainingPage()));
                },
                child: SizedBox(
                  height: 200,
                  width: 200,

                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 10,
                    //margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                    //child: Image.asset('assets/images/img4.png', fit: BoxFit.fill,),
                    child: const Align( alignment: Alignment.center, child: Text('Тренировка', textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700)), ),
                  ),
                )
            ),
        ],
      )
      ),

      appBar: AppBar(
        title: const Text("План тренировок", style: TextStyle(
          color: Colors.black, fontSize: 25),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      )
    );
  }
}


