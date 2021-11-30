import 'package:flutter/material.dart';
import 'package:apparel/components/icon_content.dart';
import 'package:apparel/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final top = 270.0;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFF87cdfe),
                Color(0xFF9cc8ff),
                Color(0xFFb9c2ff),
                Color(0xFFd9b9ff),
                Color(0xFFf8aff9),
              ],
              stops: [
                0.2,
                0.4,
                0.5,
                0.8,
                1,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 275.0,
                //bottom: 180.0,
              ),
              child: Card(
                color: Color(0xFFFFFFFF), //.withOpacity(0.01),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 70.0,
                  bottom: 45.0,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(25.0),
                      ),
                      SizedBox(
                        height: 35.0,
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
                        height: 30.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/fabricCare');
                        },
                        child: IconContent(
                          icon: FontAwesomeIcons.arrowRight,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15),
                          primary: Color(0xFFb9c2ff), // <-- Button color
                          onPrimary: Colors.white, // <-- Splash color
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: top,
            child: logoImage(),
          ),
        ],
      ),
    );
  }

  Widget logoImage() => CircleAvatar(
        radius: 80.0,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/images/apparellogo.png'),
          radius: 70.0,
          backgroundColor: Colors.transparent,
        ),
      );
}
