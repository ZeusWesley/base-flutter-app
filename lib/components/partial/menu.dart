import 'package:flutter/material.dart';
import 'package:market/components/menuItem.dart';
import 'package:market/config/routes.dart';

// pages
import 'package:market/pages/home.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic items = [
      {'text': 'Home', 'page': Home()}
    ];

    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                      color: Colors.white),
                ),
                Container(
                  width: 170,
                    padding: EdgeInsets.only(left: 10.0, top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mr. Saitama',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                          ),
                        ),
                        Text(
                          'Dia de promoção é o mais feliz!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ))
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xFF594fe8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                )),
          ),

          // Map.from(Routes(context).list).map((k,v) => {
          //   return
          // }),

          MenuItem(title: 'Home', icon: Icons.home,),
          MenuItem(title: 'Minha conta', icon: Icons.person,),
          MenuItem(title: 'Meios de Pagamento', icon: Icons.credit_card,),
          MenuItem(title: 'Sair', icon: Icons.settings_power,),
        ],
      ),
    );
    ;
  }
}
