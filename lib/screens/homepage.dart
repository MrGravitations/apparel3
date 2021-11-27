import 'package:apparel/components/icon_content.dart';
import 'package:apparel/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:apparel/components/botNavBar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'HOMEPAGE',
          style: kPageheadBold,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.only(
          top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
          child: ExpansionTile(
          title: Text('Fabric Care'),
          children: <Widget>[
            Text('Big Bang'),
            Text('Birth of the Sun'),
            Text('Earth is Born'),],
            ),
        ),
      ),
      bottomNavigationBar: BotBar(),
    );
  }
}
