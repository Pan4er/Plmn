import 'package:flutter/material.dart';
import 'dart:async';
import 'package:plmn/assets/scaffold.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  String btnText = 'button';
  String title = "О программе";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                Navigator.pop(context,
                    new MaterialPageRoute(builder: (context) => Homepage()));
              });
            },
          )),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.black45,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: Icon(Icons.anchor_outlined, size: 50),
                  title: Center(
                    child: Text(
                      'PLmn mobile 2021',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  )),
              Divider(),
              ListTile(
                title: Center(
                  child: Text(
                    "Кафедра судовой ядерной и водродной энергетики СПБГМТУ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Приложение сделано на основе IAPWS-IF97",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Разработал студент гр.2201 - Калинюк А.О.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
