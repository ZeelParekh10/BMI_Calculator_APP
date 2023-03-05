import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon, color:Colors.white),
      // elevation: 6.0,
      // disabledElevation: 6.0,
      constraints : BoxConstraints.tightFor(
          width: 56.0, height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4FE),

    );
  }
}

