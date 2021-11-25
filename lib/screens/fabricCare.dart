import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';

class FabricCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'FABRIC CARE',
          style: kPageheadBold,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xffc8f3ff),
        child: Row(
          children: [
            Spacer(),
            IconButton(
                icon: Icon(Icons.home_rounded),
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                }),
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
      ),
      body: Center(
        child: RaisedButton(
          color: Color(0xfff9fdff),
          child: Text(
            'See Results',
            style: kLabelReg,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/fabricCareResults');
          },
        ),
      ),
    );
  }
}
