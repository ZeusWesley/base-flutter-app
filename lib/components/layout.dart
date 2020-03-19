import 'package:flutter/material.dart';
import 'package:market/components/partial/header.dart';
import 'package:market/components/partial/menu.dart';

class Layout extends StatefulWidget {
  Widget child;
  String pageName;

  Layout({Key key, this.pageName, this.child}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(widget.pageName).build(context),
      drawer: Menu(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: widget.child,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.shopping_basket),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}