import 'package:flutter/material.dart';
import 'package:plmn/assets/scaffold.dart';

class Critical extends StatefulWidget {
  @override
  _CriticalState createState() => _CriticalState();
}

class _CriticalState extends State<Critical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Text('Максимально возможные входные данные',
                        style: TextStyle(color: Colors.white)),
                  )),
              Divider(),
              ListTile(
                leading:
                    Text('Температура', style: TextStyle(color: Colors.white)),
                trailing:
                    Text('647.096 K', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:
                    Text('Давление', style: TextStyle(color: Colors.white)),
                trailing:
                    Text('22.064 МПа', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:
                    Text('Плотность', style: TextStyle(color: Colors.white)),
                trailing:
                    Text('322 кг/м3', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
          title: Text("Критическая точка"),
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
    );
  }
}
