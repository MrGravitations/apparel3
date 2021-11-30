import 'package:apparel/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:apparel/components/data.dart';
import 'package:apparel/components/botNavBar.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:apparel/screens/cardPage.dart';

class RemovalStains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Stain Removal',
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 500.0,
                padding: const EdgeInsets.only(
                  left: 35.0,
                ),
                child: Swiper(
                  itemCount: nav.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    margin: const EdgeInsets.only(
                      right: 32.0,
                    ),
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 15.0,
                      size: 8.0,
                      activeColor: Colors.white,
                      space: 8.0,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (context, a, b) => CardPage(
                                      cardInfo: navtwo[index],
                                    )));
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(children: <Widget>[
                            SizedBox(
                              height: 220.0,
                            ),
                            Card(
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        navtwo[index].subtitle,
                                        style: kSubReg,
                                      ),
                                      Text(
                                        navtwo[index].name,
                                        style: kCardBold,
                                      ),
                                    ]),
                              ),
                            )
                          ]), //Navigation Cards
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 130.0,
                              left: 80.0,
                            ),
                            child: SimpleShadow(
                              child: Image.asset(
                                navtwo[index].images,
                                width: 180.0,
                              ),
                              opacity: 0.5,
                              offset: Offset(3.0, 3.0),
                              sigma: 6.0,
                            ),
                          ), //Image above Cards
                        ],
                      ),
                    );
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
