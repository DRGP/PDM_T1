import 'package:flutter/material.dart';
 
class Page3 extends StatelessWidget {
  final String textFace1 = '༼ つ ◕_◕ ༽つ';
  final String textFace2 = '(ノಠ益ಠ)ノ彡┻━┻';
  final String textFace3 = 'ლ(ಠ益ಠლ)';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Página 3'),
        ),
        body: Center(
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                color: Colors.lightGreen[200],
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context).pop(textFace1);
                }, 
                child: Text('$textFace1'),
              ),
              FlatButton(
                color: Colors.lightGreen[200],
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context).pop(textFace2);
                }, 
                child: Text('$textFace2'),
              ),
              FlatButton(
                color: Colors.lightGreen[200],
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context).pop(textFace3);
                }, 
                child: Text('$textFace3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}