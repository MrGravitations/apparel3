import 'package:apparel/constants.dart';
import 'package:flutter/material.dart';
import 'fabricCare.dart';
import 'package:apparel/components/botNavBar.dart';

class RemovalStains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'REMOVAL STAINS',
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
            Navigator.pushNamed(context, '/removalStainsResults');
          },
        ),
      ),
    );
  }
}
