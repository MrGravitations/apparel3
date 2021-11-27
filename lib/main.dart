import 'package:flutter/material.dart';
import 'package:apparel/screens/storeFinderResults.dart';
import 'package:apparel/screens/storeFinder.dart';
import 'screens/fabricCareResults.dart';
import 'screens/homepage.dart';
import 'screens/removalStainsResults.dart';
import 'screens/removalStains.dart';
import 'screens/fabricCare.dart';
import 'screens/loadingPage.dart';
import 'package:apparel/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/homepage': (context) => Homepage(),
        '/removalStains': (context) => RemovalStains(),
        '/fabricCare': (context) => FabricCare(),
        '/storeFinder': (context) => StoreFinder(),
        '/removalStainsResults': (context) => RemovalStainsResults(),
        '/fabricCareResults': (context) => FabricCareResults(),
        '/storeFinderResults': (context) => StoreFinderResults()
      },
      theme: ThemeData(
          primaryColor: Color(0xFF000000),
          scaffoldBackgroundColor: Color(0xFFf0fbfe),
          accentColor: Color(0xFF000000),
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Color(0xFFFFFF),
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ))),
    );
  }
}
