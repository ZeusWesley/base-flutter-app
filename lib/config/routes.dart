import 'package:flutter/material.dart';
import 'package:market/pages/home.dart';

class Routes {
  BuildContext context;

  Routes(context) {
    context = context;
  }

  dynamic names = {
    '/': 'Home'
  };

  dynamic list = {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => Home()
    // When navigating to the "/second" route, build the SecondScreen widget.
    // '/second': (context) => SecondScreen(),
  };
}