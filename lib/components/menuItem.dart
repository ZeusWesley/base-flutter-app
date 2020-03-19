import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  const MenuItem({this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            this.icon,
            color: Colors.white,
            size: 24.0,
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(230, 0, 90, .4),
              borderRadius: BorderRadius.all(new Radius.circular(50.0)))),
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      title: Text(this.title),
      onTap: () {
        this.onTap();
      },
    );
  }
}
