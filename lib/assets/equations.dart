import 'dart:math';

import 'package:flutter/material.dart';

import 'package:plmn/assets/scaffold.dart';
import 'package:plmn/assets/mathfns.dart';

class MainEq extends StatefulWidget {
  @override
  _MainEqState createState() => _MainEqState();
}

class _MainEqState extends State<MainEq> {
  Mathfns mf = Mathfns();
  String title = "Расчеты";

  int waterState;
  bool renderOut = false;
  int currIndex;
  double temp = 1;
  double pressure = 1;
  double entl = 1;
  var tempCtrl = TextEditingController();
  var entlCtrl = TextEditingController();
  var pressCtrl = TextEditingController();
  var vController = TextEditingController();
  var pController = TextEditingController();
  var specEntrController = TextEditingController();
  var dynViscController = TextEditingController();
  var cynViscController = TextEditingController();
  var tCondController = TextEditingController();
  var prController = TextEditingController();
  var outputTempController = TextEditingController();
  var outputEntlController = TextEditingController();
  @override
  void initState() {
    super.initState();
    currIndex = 0;
    pressCtrl.clear();
    pressCtrl.text = pressure.toString();

    entlCtrl.clear();
    entlCtrl.text = entl.toString();
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
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Center(
            child: Container(
          padding: EdgeInsets.all(9),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [renderInputData(), renderOutputData()],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              renderOut = true;
              FocusScope.of(context).requestFocus(new FocusNode());
              if (currIndex == 0) {
                equationCaseEntl();
              } else if (currIndex == 1) {
                equationCaseTemp();
              }
            });
          },
          child: Icon(
            Icons.calculate,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: (int index) {
          if (index == 0) {
            setState(() {
              currIndex = 0;
              pressCtrl.clear();
              pressCtrl.text = pressure.toString();

              entlCtrl.clear();
              entlCtrl.text = entl.toString();
              renderOut = false;
            });
          } else if (index == 1) {
            setState(() {
              currIndex = 1;
              pressCtrl.clear();
              pressCtrl.text = pressure.toString();

              tempCtrl.clear();
              tempCtrl.text = temp.toString();
              renderOut = false;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
              label: "Энтальпия", icon: Icon(Icons.blur_linear_sharp)),
          BottomNavigationBarItem(
              label: "Температура", icon: Icon(Icons.thermostat_outlined))
        ],
      ),
    );
  }

  Card renderInputData() {
    if (currIndex == 0) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.black45,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: Icon(Icons.flip_to_back_sharp, size: 70),
                trailing: Icon(Icons.blur_circular_sharp, size: 70),
                title: Center(
                  child: Text('Входные данные',
                      style: TextStyle(color: Colors.white)),
                )),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Давление (Мпа)',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onChanged: (String val) {
                  setState(() {
                    pressure = double.parse(val);
                    renderOut = false;
                  });
                },
                controller: pressCtrl,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Энтальпия (Кдж/кг)',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onChanged: (String val) {
                  setState(() {
                    entl = double.parse(val);
                    renderOut = false;
                  });
                },
                controller: entlCtrl,
              ),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
            ),
          ],
        ),
      );
    } else if (currIndex == 1) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.black45,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: Icon(Icons.flip_to_back_sharp, size: 70),
                trailing: Icon(Icons.thermostat_outlined, size: 70),
                title: Center(
                  child: Text('Входные данные',
                      style: TextStyle(color: Colors.white)),
                )),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Давление (Мпа)',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onChanged: (String val) {
                  setState(() {
                    pressure = double.parse(val);
                    renderOut = false;
                  });
                },
                controller: pressCtrl,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Температура (Град. С)',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onChanged: (String val) {
                  setState(() {
                    temp = double.parse(val);
                    renderOut = false;
                  });
                },
                controller: tempCtrl,
              ),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
            ),
          ],
        ),
      );
    }
  }

  Card renderOutputData() {
    if (renderOut == true) {
      return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.black45,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              renderStateOfWater(),
              entOrTemp(),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Удельный объем, м3/кг',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: vController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Плотность, кг/м3',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: pController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'уд.Энтропия, кДж/(кг*К)',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: specEntrController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Динамическая вязкость, мкПа*с',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: dynViscController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Кинематическая вязкость, мм2/с',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: cynViscController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Теплопроводность, мВт/(м*К)',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: tCondController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
              Padding(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: 'Число Pr',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent[100]),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  controller: prController,
                ),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
              ),
            ],
          ));
    } else {
      return Card();
    }
  }

  ListTile renderStateOfWater() {
    if (waterState == 1) {
      return ListTile(
        leading: Icon(Icons.invert_colors_on_sharp, size: 70),
        title: Text('Вода', style: TextStyle(color: Colors.white)),
        subtitle: Text('Выходные параметры для воды',
            style: TextStyle(color: Colors.white)),
      );
    } else if (waterState == 2) {
      return ListTile(
        leading: Icon(Icons.settings_system_daydream_rounded, size: 70),
        title: Text('Пар', style: TextStyle(color: Colors.white)),
        subtitle: Text('Выходные параметры для пара',
            style: TextStyle(color: Colors.white)),
      );
    } else if (waterState == 3) {
      return ListTile(
        leading: Icon(Icons.priority_high_rounded, size: 70),
        title: Text('Сверхкритическая область',
            style: TextStyle(color: Colors.white)),
      );
    }
  }

  Padding entOrTemp() {
    if (currIndex == 0) {
      return Padding(
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Температура (выход)',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyanAccent[100]),
                borderRadius: BorderRadius.circular(10.0),
              )),
          controller: outputTempController,
        ),
        padding: EdgeInsets.fromLTRB(24, 24, 24, 18),
      );
    } else if (currIndex == 1) {
      return Padding(
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Энтальпия (выход)',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyanAccent[100]),
                borderRadius: BorderRadius.circular(10.0),
              )),
          controller: outputEntlController,
        ),
        padding: EdgeInsets.fromLTRB(24, 24, 24, 18),
      );
    }
  }

  void equationCaseTemp() {
    int k;
    if (pressure < 22.064) {
      if (temp > mf.pul(10, pressure, 0)) {
        k = 2;
      } else {
        k = 1;
      }
    } else {
      if (temp > 374.096) {
        k = 3;
      } else {
        k = 1;
      }
    }

    switch (k) {
      case 1:
        waterState = 1;
        entl = mf.pul(2, pressure, temp);
        double v = mf.pul(3, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(4, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(2, pressure, temp) - mf.pul(2, pressure, temp - 0.1)) *
            mu /
            la;

        outputEntlController.text = ((entl * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;

      case 2:
        waterState = 2;
        entl = mf.pul(15, pressure, temp);
        double v = mf.pul(16, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(17, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(15, pressure, temp + 0.1) - mf.pul(15, pressure, temp)) *
            mu /
            la;

        outputEntlController.text = ((entl * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;

      case 3:
        waterState = 3;
        entl = mf.pul(20, pressure, temp);
        double v = mf.pul(21, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(22, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(15, pressure, temp + 0.1) - mf.pul(15, pressure, temp)) *
            mu /
            la;

        outputEntlController.text = ((entl * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;
    }
  }

  void equationCaseEntl() {
    int k;
    if (pressure < 22.064) {
      if (entl > mf.pul(6, 0, mf.pul(10, pressure, 0))) {
        k = 2;
      } else {
        k = 1;
      }
    } else {
      if (entl > mf.pul(2, pressure, 374.1)) {
        k = 3;
      } else {
        k = 1;
      }
    }

    switch (k) {
      case 1:
        waterState = 1;
        temp = mf.pul(1, pressure, entl);
        double v = mf.pul(3, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(4, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(2, pressure, temp) - mf.pul(2, pressure, temp - 0.1)) *
            mu /
            la;

        outputTempController.text = ((temp * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;

      case 2:
        waterState = 2;
        temp = mf.pul(14, pressure, entl);
        double v = mf.pul(16, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(17, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(15, pressure, temp + 0.1) - mf.pul(15, pressure, temp)) *
            mu /
            la;

        outputTempController.text = ((temp * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;

      case 3:
        waterState = 3;
        temp = mf.pul(19, pressure, entl);
        double v = mf.pul(21, pressure, temp);
        double ro = 1 / v;
        double s = mf.pul(22, pressure, temp);
        double mu = mf.pul(24, v, temp);
        double nu = mu * v;
        double la = mf.pul(25, v, temp);
        double pr = 10 *
            (mf.pul(15, pressure, temp + 0.1) - mf.pul(15, pressure, temp)) *
            mu /
            la;

        outputTempController.text = ((temp * 100).round() / 100).toString();
        vController.text = ((v * 10000000).round() / 10000000).toString();
        pController.text = ((ro * 1000000).round() / 1000000).toString();
        specEntrController.text = ((s * 100000).round() / 100000).toString();
        dynViscController.text = ((mu * 1000).round() / 1000).toString();
        cynViscController.text = ((nu * 10000).round() / 10000).toString();
        tCondController.text = ((la * 100).round() / 100).toString();
        prController.text = ((pr * 1000).round() / 1000).toString();
        break;
    }
  }
}
