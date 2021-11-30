import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40,
          color: Color(0xE6FFFFFF),
        ),
      ],
    );
  }
}
