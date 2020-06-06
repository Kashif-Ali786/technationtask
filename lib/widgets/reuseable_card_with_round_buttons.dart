import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technationtask/widgets/round_button.dart';

class ReuseableCardWithRoundButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: <Widget>[
              Text(
                'T-Shirt',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 80,
                width: 100,
                child: Image(
                  image: AssetImage('assets/food3.jpeg'),
                ),
              ),
              SizedBox(height: 4),
              Text('AED 2.3'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                height: 1,
                color: Colors.black,
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RoundIconButton(
                    icon: Icons.add,
                    onPress: null,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '5',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RoundIconButton(icon: Icons.remove, onPress: null)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
