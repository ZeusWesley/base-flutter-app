import 'package:flutter/material.dart';
import 'package:market/config/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feirinha',
      initialRoute: '/',
      routes: Routes(context).list,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}