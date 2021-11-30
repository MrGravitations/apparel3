import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';
import 'package:apparel/components/botNavBar.dart';

class StoreFinder extends StatefulWidget {
  @override
  _StoreFinderState createState() => _StoreFinderState();
}

class _StoreFinderState extends State<StoreFinder> {
  int distance = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Store Finder',
          style: kPageheadBold,
        ),
        elevation: 0,
      ),
      body: Container(
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
            0.3,
            0.5,
            0.8,
            1,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        constraints: BoxConstraints.expand(),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 110.0,
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
                    padding: EdgeInsets.all(20.0),
                  ),
                  Text(
                    'Current place: TEXT',
                    style: kTextReg,
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'MAP PLACEHOLDER',
                    style: kTextReg,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFb9c2ff),
                      inactiveTrackColor: Color(0xFFD6E0ED),
                      thumbColor: Color(0xFF9cc8ff),
                      overlayColor: Color(0x3096D4E7),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                    ),
                    child: Slider(
                      value: distance.toDouble(),
                      min: 0.0,
                      max: 1000.0,
                      onChanged: (double newValue) {
                        setState(() {
                          distance = newValue.round();
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fabricCare');
                    },
                    child: Text(
                      'Search',
                      style: kSearchBold,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
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
      bottomNavigationBar: BotBar(),
    );
  }
}
