import 'dart:math';

import 'package:flutter/material.dart';
 
class Page2 extends StatefulWidget {

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

final Random randomGenerator = new Random();
int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page2',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Página 2'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Genere un número random',
                style: TextStyle(
                  height: 4,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 18,
                  ),
                ),
              Text(
                '$randomNumber',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 20,
                  ),
                ),
              FlatButton(
                color: Colors.lightGreen,
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  setState(() {
                    randomNumber = randomGenerator.nextInt(1000);
                  });
                }, 
                child: Text('Generar'),
              ),
              FlatButton(
                color: Colors.lightGreen,
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context).pop(randomNumber);
                }, 
                child: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}