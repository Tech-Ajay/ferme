import 'package:ajfereme/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ajfereme/Buy/constants.dart';
import 'package:ajfereme/Buy/screens/home/home_screen.dart';


void main() {
  runApp(MyAppBuySell());
}

class MyAppBuySell extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreenn(),
    );
  }
}
