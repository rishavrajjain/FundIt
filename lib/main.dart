//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fundit_application/profile-menu.dart';

//import 'profile-menu.dart';

void main() async {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) =>
    MyApp(),

    // ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: false);

    return MaterialApp(
      title: 'small_business',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Typewriter',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 42.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline5: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
          headline2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.white),
          headline3: TextStyle(
              fontSize: 20.0,
             color: Colors.white,
              fontWeight: FontWeight.w500),
          headline4: TextStyle(
              fontSize: 20.0,
              color: Colors.cyan[200],
              fontWeight: FontWeight.w500),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => ProfileMenu(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/second': (context) => SecondScreen(),
      },
      //builder: DevicePreview.appBuilder,
    );
  }
}
