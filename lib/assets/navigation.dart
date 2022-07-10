import 'package:flutter/material.dart';
import 'package:plmn/assets/equations.dart';
import 'package:plmn/assets/line.dart';
import 'package:plmn/assets/about.dart';
import 'package:plmn/assets/critical.dart';

class Leftdrawer extends StatefulWidget {
  @override
  _LeftdrawerState createState() => _LeftdrawerState();
}

class _LeftdrawerState extends State<Leftdrawer> {
  bool linePushedState;

  @override
  void initState() {
    super.initState();
    linePushedState = false;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/drawble/im/logo.png"))),
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text("Расчеты"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => MainEq()));
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.waves_rounded),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("Параметры на линии насыщения"),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Line()));
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.dangerous),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("Критическая точка"),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Critical()));
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.text_snippet_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("О программе"),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => About()));
              });
            },
          ),
        ],
      ),
    );
  }
}
