import 'package:flutter/material.dart';
import 'mathfns.dart';
import 'package:plmn/assets/scaffold.dart';

class Line extends StatefulWidget {
  @override
  _LineState createState() => _LineState();
}

class _LineState extends State<Line> {
  Mathfns mf = Mathfns();
  int currIndex = 0;
  double pressure = 1;
  double temperature = 1;
  bool renderOut = false;
  bool renderMainOutData = false;
  bool critical = false;
  String title = 'Линия насыщения';
  var pressureController = TextEditingController();
  var temperatureController = TextEditingController();
  var outputtemperatureController = TextEditingController();
  var outputpressureController = TextEditingController();

  var wspecEntlController = TextEditingController();
  var wspecVController = TextEditingController();
  var wspecRoController = TextEditingController();
  var wspecEntrController = TextEditingController();
  var wdynViscController = TextEditingController();
  var wcynViscController = TextEditingController();
  var wtCondController = TextEditingController();
  var wPrController = TextEditingController();
  var tensController = TextEditingController();

  var sspecEntlController = TextEditingController();
  var sspecVController = TextEditingController();
  var sspecRoController = TextEditingController();
  var sspecEntrController = TextEditingController();
  var sdynViscController = TextEditingController();
  var scynViscController = TextEditingController();
  var stCondController = TextEditingController();
  var sPrController = TextEditingController();

  var scaf = GlobalKey<ScaffoldState>();

  @override
  @override
  void initState() {
    super.initState();
    pressureController.clear();
    pressureController.text = pressure.toString();

    temperatureController.clear();
    temperatureController.text = temperature.toString();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaf,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              renderOut = true;
              renderMainOutData = true;
              FocusScope.of(context).requestFocus(new FocusNode());
              if (currIndex == 0) {
                equationCasePressure();
              } else if (currIndex == 1) {
                equationCaseTemperature();
              }
            });
          },
          child: Icon(
            Icons.calculate,
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: (int index) {
          renderOut = false;
          renderMainOutData = false;
          if (index == 0) {
            setState(() {
              currIndex = 0;
            });
          } else if (index == 1) {
            setState(() {
              currIndex = 1;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
              label: "Давление", icon: Icon(Icons.flip_to_back_sharp)),
          BottomNavigationBarItem(
              label: "Температура", icon: Icon(Icons.thermostat_outlined))
        ],
      ),
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(9),
            child: ListView(
              children: [
                renderCard(),
                renderOutCard(),
                renderMain(),
              ],
            ),
          )),
    );
  }

  Card renderCard() {
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
              title: Text('Давление', style: TextStyle(color: Colors.white)),
              subtitle: Text('Введите давление (Мпа)',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent[100]),
                  borderRadius: BorderRadius.circular(10.0),
                )),
                onChanged: (String val) {
                  setState(() {
                    pressure = double.parse(val);
                    renderOut = false;
                    renderMainOutData = false;
                  });
                },
                controller: pressureController,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            )
          ],
        ),
      );
    } else {
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
              leading: Icon(Icons.thermostat_outlined, size: 70),
              title: Text('Температура', style: TextStyle(color: Colors.white)),
              subtitle: Text('Введите температуру (Град. С)',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent[100]),
                  borderRadius: BorderRadius.circular(10.0),
                )),
                onChanged: (String val) {
                  setState(() {
                    temperature = double.parse(val);
                    renderOut = false;
                    renderMainOutData = false;
                  });
                },
                controller: temperatureController,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            ),
          ],
        ),
      );
    }
  }

  Card renderOutCard() {
    if ((currIndex == 0) && (renderOut == true)) {
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
              leading: Icon(Icons.thermostat_outlined, size: 70),
              title: Text('Температура', style: TextStyle(color: Colors.white)),
              subtitle: Text('Выходное значение (Град. С)',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent[100]),
                  borderRadius: BorderRadius.circular(10.0),
                )),
                controller: outputtemperatureController,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            ),
          ],
        ),
      );
    } else if ((currIndex == 1) && (renderOut == true)) {
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
              title: Text('Давление', style: TextStyle(color: Colors.white)),
              subtitle: Text('Выходное значение (Мпа)',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent[100]),
                  borderRadius: BorderRadius.circular(10.0),
                )),
                controller: outputpressureController,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            )
          ],
        ),
      );
    } else {
      return Card();
    }
  }

  Card renderMain() {
    if (renderMainOutData == true) {
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
              leading: Icon(Icons.invert_colors_on_sharp, size: 70),
              title: Text('Вода', style: TextStyle(color: Colors.white)),
              subtitle: Text('Выходные параметры для воды',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Удельная энтальпия, кДж/кг',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                controller: wspecEntlController,
              ),
              padding: EdgeInsets.fromLTRB(24, 18, 24, 18),
            ),
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
                controller: wspecVController,
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
                controller: wspecRoController,
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
                controller: wspecEntrController,
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
                controller: wdynViscController,
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
                controller: wcynViscController,
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
                controller: wtCondController,
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
                controller: wPrController,
              ),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Поверхностное натяжение, мН/м',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                controller: tensController,
              ),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings_system_daydream_rounded, size: 70),
              title: Text('Пар', style: TextStyle(color: Colors.white)),
              subtitle: Text('Выходные параметры для пара',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Удельная энтальпия, кДж/кг',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent[100]),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                controller: sspecEntlController,
              ),
              padding: EdgeInsets.fromLTRB(24, 24, 24, 18),
            ),
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
                controller: sspecVController,
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
                controller: sspecRoController,
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
                controller: sspecEntrController,
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
                controller: sdynViscController,
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
                controller: scynViscController,
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
                controller: stCondController,
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
                controller: sPrController,
              ),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 18),
            ),
          ],
        ),
      );
    } else {
      return Card();
    }
  }

  void equationCasePressure() {
    if (pressure > 22.064) {
      renderMainOutData = false;
      renderOut = false;
      scaf.currentState.showSnackBar(snackPres());
    } else {
      temperature = mf.pul(10, pressure, 0);
      outputtemperatureController.text =
          ((temperature * 100).round() / 100).toString();
      temperatureController.text = outputtemperatureController.text;
      maineq();
    }
  }

  void equationCaseTemperature() {
    if (temperature > 374.1) {
      renderMainOutData = false;
      renderOut = false;
      scaf.currentState.showSnackBar(snackTemp());
    } else {
      pressure = mf.pul(5, 0, temperature);
      outputpressureController.text =
          ((pressure * 1000000).round() / 1000000).toString();
      pressureController.text = outputpressureController.text;
      maineq();
    }
  }

  void maineq() {
    double wentl = mf.pul(6, 0, temperature);
    wspecEntlController.text = ((wentl * 100).round() / 100).toString();

    double wspecV = mf.pul(7, 0, temperature);
    wspecVController.text = ((wspecV * 10000000).round() / 10000000).toString();

    double wspecRo = 1 / wspecV;
    wspecRoController.text = ((wspecRo * 1000000).round() / 1000000).toString();

    double wspecEntr = mf.pul(8, 0, temperature);
    wspecEntrController.text =
        ((wspecEntr * 100000).round() / 100000).toString();

    double wdynVisc = mf.pul(24, wspecV, temperature);
    wdynViscController.text = ((wdynVisc * 1000).round() / 1000).toString();

    double wcynVisc = wdynVisc * wspecV;
    wcynViscController.text = ((wcynVisc * 10000).round() / 10000).toString();

    double wtCond = mf.pul(25, wspecV, temperature);
    wtCondController.text = ((wtCond * 100).round() / 100).toString();

    double wpr = 10 *
        (mf.pul(2, pressure, temperature) -
            mf.pul(2, pressure, temperature - 0.1)) *
        wdynVisc /
        wtCond;
    wPrController.text = ((wpr * 1000).round() / 1000).toString();

    double tens = mf.pul(9, 0, temperature);
    tensController.text = ((tens * 1000).round() / 1000).toString();

//------------------------- Пар

    double sentl = mf.pul(11, 0, temperature);
    sspecEntlController.text = ((sentl * 100).round() / 100).toString();

    double sspecV = mf.pul(12, 0, temperature);
    sspecVController.text = ((sspecV * 10000000).round() / 10000000).toString();

    double sspecRo = 1 / sspecV;
    sspecRoController.text = ((sspecRo * 1000000).round() / 1000000).toString();

    double sspecEntr = mf.pul(13, 0, temperature);
    sspecEntrController.text =
        ((sspecEntr * 100000).round() / 100000).toString();

    double sdynVisc = mf.pul(24, sspecV, temperature);
    sdynViscController.text = ((sdynVisc * 1000).round() / 1000).toString();

    double scynVisc = sdynVisc * sspecV;
    scynViscController.text = ((scynVisc * 10000).round() / 10000).toString();

    double stCond = mf.pul(25, sspecV, temperature);
    stCondController.text = ((stCond * 100).round() / 100).toString();

    double spr = 10 *
        (mf.pul(15, pressure, temperature + 0.1) -
            mf.pul(15, pressure, temperature)) *
        sdynVisc /
        stCond;
    sPrController.text = ((spr * 1000).round() / 1000).toString();
  }

  SnackBar snackTemp() {
    return SnackBar(
      content: Text(
        "Температура выше крит. точки",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black45,
    );
  }

  SnackBar snackPres() {
    return SnackBar(
      content: Text(
        "Давление выше крит. точки",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black45,
    );
  }
}
