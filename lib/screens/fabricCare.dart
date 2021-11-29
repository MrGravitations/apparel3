import 'package:flutter/material.dart';
import 'package:apparel/constants.dart';
import 'package:apparel/components/botNavBar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
      ),
      bottomNavigationBar: BotBar(),
    );
  }
}
