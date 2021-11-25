import 'package:flutter/material.dart';
import 'package:apparel/components/icon_content.dart';
import 'package:apparel/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFff92ff),
/*      appBar: AppBar(
        elevation: 0,
        title: Text('Loading Page'),
      ),*/
      body: Card(
        color: Color(0xE6FFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.circular(50.0),
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.zero,
          ),
        ),
        margin: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 70.0,
          bottom: 65.0,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/assets/images/apparel4.png',
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Welcome to',
                style: kHeaderReg,
                textAlign: TextAlign.center,
              ),
              Text(
                'APPAREL',
                style: kHeaderBlack,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: IconContent(
                  icon: FontAwesomeIcons.arrowRight,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: Color(0xFFa1e3f8), // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
