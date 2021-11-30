import 'package:flutter/material.dart';
import 'package:apparel/components/data.dart';
import 'package:apparel/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CardPage extends StatelessWidget {
  final CardInfo cardInfo;

  const CardPage({Key key, this.cardInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  GradientText(
                    cardInfo.name ?? '',
                    style: kCardBlack,
                    colors: [
                      Color(0xFF87cdfe),
                      Color(0xFF9cc8ff),
                      Color(0xFFb9c2ff),
                      Color(0xFFd9b9ff),
                      Color(0xFFf8aff9),
                    ],
                  ),
                  Text(
                    cardInfo.subtitle ?? '',
                    style: kCardReg,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    cardInfo.info ?? '',
                    //maxLines: 7,
                    //overflow: TextOverflow.ellipsis,
                    style: kTextReg,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    cardInfo.subtypeOne ?? '',
                    style: kCardReg,
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    cardInfo.infoColored ?? '',
                    style: kTextReg,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    cardInfo.subtypeTwo ?? '',
                    style: kCardReg,
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    cardInfo.infoWhite ?? '',
                    style: kTextReg,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    cardInfo.subtypeThree ?? '',
                    style: kCardReg,
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    cardInfo.infoBlack ?? '',
                    style: kTextReg,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 180,
            child: SimpleShadow(
              child: Image.asset(
                cardInfo.images,
                width: 200.0,
              ),
              opacity: 0.3,
              offset: Offset(2.0, 2.0),
              sigma: 3.0,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          )
        ],
      ),
    ));
  }
}
