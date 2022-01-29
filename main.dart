import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void onLED()
{
  http.get(Uri.parse('http://ip address/ledOn'));
}

void offLED()
{
  http.get(Uri.parse('http://ip address/ledOff'));
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  MyApp({Key key}):super(key:key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'LED CONTROL SYSTEM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('LED CONTROL SYSTEM'),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[

            RaisedButton(
              child: Text(
                'TURN ON LED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              padding: EdgeInsets.only(top: 15, bottom: 15),
              onPressed: onLED,
              color: Colors.green.shade900,
            ),

            Container(
              height: 10,
            ),

            RaisedButton(
                child: Text(
                  'TURN OFF LED',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                onPressed: offLED,
                color: Colors.pink
            ),
          ],
        ),
      ),
    );
  }
}
