import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String pagename;

  const Header(this.pagename);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF594fe8),
      title: Text(this.pagename),
      // actions: <Widget>[Center(child: Text(this.pagename))],
    );
  }
}
