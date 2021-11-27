import 'package:flutter/material.dart';

class BotBar extends StatelessWidget {
  const BotBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Color(0xffc8f3ff),
      child: Row(
        children: [
          Spacer(),
          IconButton(
              icon: Icon(Icons.coffee_rounded),
              onPressed: () {
                Navigator.pushNamed(context, '/removalStains');
              }),
          Spacer(),
          IconButton(
              icon: Icon(Icons.dry_cleaning_rounded),
              onPressed: () {
                Navigator.pushNamed(context, '/fabricCare');
              }),
          Spacer(),
          IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () {
                Navigator.pushNamed(context, '/storeFinder');
              }),
          Spacer(),
        ],
      ),
    );
  }
}
