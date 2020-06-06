import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:technationtask/util/const.dart';


class RadialMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Builder(
        builder: (context) => FabCircularMenu(
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomCenter,
          ringColor: primaryColor,
          ringDiameter: 400.0,
          ringWidth: 70.0,
          fabSize: 50.0,
          fabElevation: 5.0,
          fabColor: Colors.white,
          fabOpenIcon: Icon(Icons.add, color: Colors.amber),
          fabCloseIcon: Icon(Icons.close, color: primaryColor),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInBack,
          onDisplayChange: (isOpen) {
//              _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
          },
          children: <Widget>[
            Text('Shoes',style: TextStyle(color: Colors.white,),),
            SizedBox(width: 5),
            Text('Bedding',style: TextStyle(color: Colors.white),),
            SizedBox(width: 5),
            Text('Clothes',style: TextStyle(color: Colors.white),),
            SizedBox(width: 5),
            Text('Wash',style: TextStyle(color: Colors.white),),
            SizedBox(width: 5),
            Text('Shoes',style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
