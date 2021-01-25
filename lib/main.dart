import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.cyan),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Container(
        color: Colors.lightBlue,
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          color: Colors.red,
          alignment: Alignment.center,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          color: Colors.yellow,
          alignment: Alignment.center,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          color: Colors.green,
          alignment: Alignment.center,
        ),
          ],
        ),
      ),
    );
  }
}
