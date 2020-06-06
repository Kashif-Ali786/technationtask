import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technationtask/screens/calculator_screen.dart';

class ReuseableCard extends StatelessWidget {
  final String imagePath;
  ReuseableCard({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      elevation: 25,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
            Text('Urgent Wash',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text('Delivery in 8 hours'),
          ],
        ),
      ),
    );
  }
}
