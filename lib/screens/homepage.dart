import 'package:apparel/components/icon_content.dart';
import 'package:apparel/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Color(0xfff9fdff),
              child: Text(
                'removal stains',
                style: kLabelReg,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/removalStains');
              },
            ),
            RaisedButton(
              color: Color(0xfff9fdff),
              child: Text(
                'fabric care',
                style: kLabelReg,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/fabricCare');
              },
            ),
            RaisedButton(
                color: Color(0xfff9fdff),
                child: Text(
                  'store finder',
                  style: kLabelReg,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/storeFinder');
                }),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: IconContent(
                icon: FontAwesomeIcons.arrowLeft,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Color(0xFFfabf7f), // <-- Button color
                onPrimary: Colors.white, // <-- Splash color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
