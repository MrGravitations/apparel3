import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.kolor, this.cardChild, this.onPress});

  final Color kolor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          color: kolor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFD6E0ED),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
