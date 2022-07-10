import 'package:flutter/material.dart';
import 'package:plmn/assets/homepageContainer.dart';
import 'package:plmn/assets/navigation.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PLmn mobile"),
        ),
        drawer: Leftdrawer(),
        body: Homepagecontainer());
  }
}
