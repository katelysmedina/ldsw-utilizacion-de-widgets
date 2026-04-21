import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'LDSW: Utilización de widgets',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              Text(
                'Column',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Elemento A'),
                    Text('Elemento B'),
                    Text('Elemento C'),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Text('Hola mundo'),

              SizedBox(height: 20),

              Text(
                'Row',
                style: TextStyle(fontSize: 22),
              ),

              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Uno'),
                    SizedBox(width: 10),
                    Text('Dos'),
                    SizedBox(width: 10),
                    Text('Tres'),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Container',
                style: TextStyle(fontSize: 22),
              ),

              Container(
                width: 200,
                height: 100,
                color: Colors.brown,
                alignment: Alignment.center,
                child: Text(
                  'Contenedor',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Stack',
                style: TextStyle(fontSize: 22),
              ),
              
              Stack(
                children: [
                  // Fondo
                  Container(
                  width: 200,
                  height: 120,
                  color: Colors.brown[300],
                  ),
                  
                  // Texto 1
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Elemento 1',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        ),
                        ),
                    
                    // Texto 2
                    Positioned(
                    top: 5,
                    right: 5,
                    child: Text(
                      'Elemento 2',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
    ),
  ],
),
            ],
          ),
        ),
      ),
    );
  }
}