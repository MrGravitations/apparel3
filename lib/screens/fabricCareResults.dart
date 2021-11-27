import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';
import 'package:apparel/components/botNavBar.dart';

class FabricCareResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'FABRIC CARE RESULTS',
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
            'Go Back',
            style: kLabelReg,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/fabricCare');
          },
        ),
      ),
    );
  }
}


