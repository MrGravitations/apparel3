import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';

class BotBar extends StatelessWidget {
  const BotBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
        color: Color(0xffFFFFFF),
      ),
      padding: const EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(Icons.coffee_rounded),
              iconSize: 35.0,
              onPressed: () {
                Navigator.pushNamed(context, '/removalStains');
              }),
          IconButton(
              icon: Icon(Icons.dry_cleaning_rounded),
              iconSize: 35.0,
              onPressed: () {
                Navigator.pushNamed(context, '/fabricCare');
              }),
          IconButton(
              icon: Icon(
                Icons.search_rounded,
              ),
              iconSize: 35.0,
              onPressed: () {
                Navigator.pushNamed(context, '/storeFinder');
              }),
        ],
      ),
    );
  }
}
