import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2.0),
        shape: BoxShape.circle,
      ),
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: onPress,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          width: 30.0,
          height: 30.0,
        ),
        shape: CircleBorder(),
      ),
    );
  }
}
