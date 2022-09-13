import 'package:chat_sap/app_routes.dart';
import 'package:chat_sap/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  // init Firebase
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // run app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // TEST YANO
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatSap',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // home: WelcomeScreen(),
      initialRoute: '/',
      routes: kRoutes,
    );
  }
}
