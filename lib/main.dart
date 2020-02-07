import 'package:flutter/material.dart';
import 'package:tarea_1/page2.dart';
import 'package:tarea_1/page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String page2String = '';
  String page3String = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Bienvenidos',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 30,
                height: 2,
                ),
            ),
            Image.asset(
              'assets/images/test_image.jpg',
              scale: 2,
            ),
            Text(
              'Seleccione la acción a realizar:',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                height: 2,
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Página 2',
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          TextEditingController _textController = TextEditingController();
                          return AlertDialog(
                            title: Text('Ingrese datos'),
                            content: TextField(
                              controller: _textController,
                              maxLength: 10,
                              decoration: InputDecoration(
                                labelText: 'Ingrese Palabra',
                                hintText: 'Palabra',
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                child: Text('Aceptar'),
                                onPressed: () async {
                                  page2String = _textController.text;
                                  Navigator.of(context).pop();
                                  await Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(builder: (context) => Page2()
                                    ),
                                  ).then(
                                    (response) {
                                      page2String = '$page2String $response';
                                    }
                                  );
                                }
                              ),
                              FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                child: Text('Cancelar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                      );
                    }, 
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Página 3',
                    ),
                    onPressed: () async {
                      await Navigator.of(context)
                        .push(
                          MaterialPageRoute(builder: (context) => Page3()
                        ),
                      ).then(
                        (response) {
                          page3String = '$response';
                        }
                      );
                    }, 
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pg. 2 => '),
                Text('$page2String'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pg. 3 => '),
                Text('$page3String'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
