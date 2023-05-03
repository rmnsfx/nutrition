import 'package:flutter/material.dart';
import 'elements.dart';
import 'food.dart';
import 'training.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тренировки и питание',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
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
      backgroundColor: Colors.indigo.shade100,

      appBar: AppBar(
        toolbarHeight: 130,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              //verticalDirection: VerticalDirection.up,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('ТРЕНИРОВКИ И', style: GoogleFonts.montserrat(color: Colors.white,
                    fontSize: 35, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                Text('ПИТАНИЕ', style: GoogleFonts.montserrat(color: Colors.white,
                  fontSize: 33, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              //color: Colors.blueGrey,
              //image: DecorationImage(
              //image: AssetImage("assets/images/img2.png"),
              //fit: BoxFit.fill
              //)
              ),
          child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              InkWell(
                  onTap: () {
                    //print("Card 1 Clicked");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FoodPage()));
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/4.0,
                    width: MediaQuery.of(context).size.width/2.0,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 10,
                      //margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Image.asset('assets/images/img6.png',
                        fit: BoxFit.none,
                      ),
                      // child: const Align( alignment: Alignment.center, child: Text('Питание', textAlign: TextAlign.center,
                      // style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700)), ),
                    ),
                  )
              ),
                InkWell(
                  onTap: () {
                    //print("Card 2 Clicked");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TrainingPage()));
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/4.0,
                    width: MediaQuery.of(context).size.width/2.0,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 10,
                      //margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Image.asset('assets/images/img8.png',
                        fit: BoxFit.none,
                      ),
                      //child: const Align( alignment: Alignment.center, child: Text('Тренировка', textAlign: TextAlign.center,
                      //style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700)), ),
                    ),
                  )
              ),
            ],
          )),
        ),
      ),

    );
  }
}
