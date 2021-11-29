import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';
import 'package:apparel/components/botNavBar.dart';
import 'package:flutter/rendering.dart';

class FabricCare extends StatefulWidget {
  @override
  _FabricCareState createState() => _FabricCareState();
}

class _FabricCareState extends State<FabricCare> {
  bool _customTileExpanded = false;
  String fab = 'Fabric Type';
  String clr = 'Type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'FABRIC CARE',
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
            0.4,
            0.6,
            0.8,
            1,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        constraints: BoxConstraints.expand(),
        width: double.infinity,
/*        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
          ),
        ),*/
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 0,
                child: Card(
                  color: Color(0xFFD4F5FD).withOpacity(0.9),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 1.0, left: 6.0, right: 6.0, bottom: 6.0),
                    child: ExpansionTile(
                      title: Text('$fab'),
                      subtitle: Text('Choose your type of Fabric'),
                      children: <Widget>[
                        new ListTile(
                          title: Text('Cotton'),
                          onTap: () {
                            setState(() {
                              fab = 'Cotton';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('Denim'),
                          onTap: () {
                            setState(() {
                              fab = 'Denim';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('Leather'),
                          onTap: () {
                            setState(() {
                              fab = 'Leather';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('Silk'),
                          onTap: () {
                            setState(() {
                              fab = 'Silk';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('Wool'),
                          onTap: () {
                            setState(() {
                              fab = 'Wool';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: Card(
                  color: Color(0xFFD4F5FD).withOpacity(0.9),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 1.0, left: 6.0, right: 6.0, bottom: 6.0),
                    child: ExpansionTile(
                      title: Text('$clr'),
                      subtitle: Text('Choose your type'),
                      children: <Widget>[
                        new ListTile(
                          title: Text('Colored'),
                          onTap: () {
                            setState(() {
                              clr = 'Colored';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('White'),
                          onTap: () {
                            setState(() {
                              clr = 'White';
                            });
                          },
                        ),
                        new ListTile(
                          title: Text('Black'),
                          onTap: () {
                            setState(() {
                              clr = 'Black';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: RaisedButton(
                  color: Color(0xFFBEE9F7),
                  child: Text(
                    'See Results',
                    style: kLabelReg,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fabricCareResults');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotBar(),
    );
  }
}
