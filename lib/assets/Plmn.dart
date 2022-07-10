import 'package:flutter/material.dart';
import 'scaffold.dart';

class Plmn extends StatefulWidget {
  @override
  _PlmnState createState() => _PlmnState();
}

class _PlmnState extends State<Plmn> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: Homepage(),
    );
  }
}
