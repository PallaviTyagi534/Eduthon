
import 'package:flutter/material.dart';
import 'package:strash/pages/splashscreen.dart';


void main()
{

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sTrash',
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(body: Splash())),

    );
  }
}
