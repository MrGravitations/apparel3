import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';
import 'package:apparel/components/botNavBar.dart';

class StoreFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'STORE FINDER',
          style: kPageheadBold,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BotBar(),
      body: Center(
        child: RaisedButton(
          color: Color(0xfff9fdff),
          child: Text(
            'See Results',
            style: kLabelReg,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/storeFinderResults');
          },
        ),
      ),
    );
  }
}
