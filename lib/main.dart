//import 'package:bendemistimm/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ben Demiştim',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: accentColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
