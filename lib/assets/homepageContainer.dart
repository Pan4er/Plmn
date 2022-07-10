import 'package:flutter/material.dart';

class Homepagecontainer extends StatefulWidget {
  @override
  _HomepagecontainerState createState() => _HomepagecontainerState();
}

class _HomepagecontainerState extends State<Homepagecontainer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 400,
                  margin: EdgeInsets.fromLTRB(9, 9, 9, 27),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black38,
                      image: DecorationImage(
                          image: AssetImage("lib/drawble/im/steam1.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black54),
                  margin: EdgeInsets.all(9),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: ListView(
                      children: [
                        Text(
                          "Добро пожаловать в мобильную версию plmn!",
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),
                        Text(
                          "Делаем ваши вычисления удобнее",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
