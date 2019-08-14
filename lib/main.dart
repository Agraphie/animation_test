import 'package:animation_test/vertical_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HorizontalList(),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontale Liste"),
      ),
      body: Container(
        height: 100,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            ColorHero(
              width: 100.0,
              color: Colors.red,
            ),
            ColorHero(
              width: 100.0,
              color: Colors.blue,
            ),
            ColorHero(
              width: 100.0,
              color: Colors.green,
            ),
            ColorHero(
              width: 100.0,
              color: Colors.yellow,
            ),
            ColorHero(
              width: 100.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VerticalList()),
        ),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ColorHero extends StatelessWidget {
  const ColorHero({Key key, this.color, this.onTap, this.width, this.height})
      : super(key: key);

  final Color color;
  final VoidCallback onTap;
  final double width;
  final double height;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Hero(
        tag: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 100.0,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
