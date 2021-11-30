import 'package:flutter/material.dart';
import 'package:apparel/screens/storeFinder.dart';
import 'screens/removalStains.dart';
import 'screens/fabricCare.dart';
import 'screens/loadingPage.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));
  // This removes the bottom navigation and fills the empty space
  SystemChrome.setEnabledSystemUIOverlays([]);
  // --> OR <-- you could do this:
  // This removes the top and bottom and fills the empty space
  // This one resulted in a native pop up that notified me I was in full screen
  // mode and how to restore navigation by swiping up/down from the edges
  // SystemChrome.setEnabledSystemUIOverlays([]);  <-- this is native full screen mode
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/removalStains': (context) => RemovalStains(),
        '/fabricCare': (context) => FabricCare(),
        '/storeFinder': (context) => StoreFinder(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
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
