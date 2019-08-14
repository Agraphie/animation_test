import 'package:animation_test/main.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vertikale Liste"),
      ),
      body: Container(
        width: 100,
        child: ListView(
          children: <Widget>[
            ColorHero(
              height: 100.0,
              color: Colors.red,
            ),
            ColorHero(
              height: 100.0,
              color: Colors.blue,
            ),
            ColorHero(
              height: 100.0,
              color: Colors.green,
            ),
            ColorHero(
              height: 100.0,
              color: Colors.yellow,
            ),
            ColorHero(
              height: 100.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
