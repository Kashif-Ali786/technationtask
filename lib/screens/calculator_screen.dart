import 'package:flutter/material.dart';
import 'package:technationtask/widgets/reuseable_card_with_round_buttons.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(300, 120),
                      bottomRight: Radius.elliptical(300, 120),
                    ),
                    color: Color(0xff3C1E40),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 32, left: 23, right: 23,bottom: 5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),),
                  elevation: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Total Items',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '27',
                              style: TextStyle(color: Colors.amber,
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Total Cost',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'AED 550',
                              style: TextStyle(color: Colors.amber,
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReuseableCardWithRoundButton(),
                    ReuseableCardWithRoundButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReuseableCardWithRoundButton(),
                    ReuseableCardWithRoundButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReuseableCardWithRoundButton(),
                    ReuseableCardWithRoundButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReuseableCardWithRoundButton(),
                    ReuseableCardWithRoundButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

