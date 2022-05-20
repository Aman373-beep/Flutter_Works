import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const base());
}

class base extends StatelessWidget {
  const base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc_Home(),
    );
  }
}

class Calc_Home extends StatefulWidget {
  const Calc_Home({Key? key}) : super(key: key);

  @override
  State<Calc_Home> createState() => Calc_HomeState();
}

class Calc_HomeState extends State<Calc_Home> {
  @override
  var buttons = [
    '√',
    '%',
    '/',
    'del',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    'ac',
    '0',
    '.',
    '=',
  ];
  static String op = "";
  void Add_button_val(var x) {
    setState(() {
      op += x;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text(
            "My_Calculator",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 23,
            ),
          ),
          backgroundColor: Colors.black87,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: 800,
              height: 50,
              color: Colors.grey,
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                op,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white70),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: 800,
              height: 50,
              color: Colors.grey,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Calculation_Start(op),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[0]),
                        child: Text(
                          "√",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[1]),
                        child: Text(
                          "%",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[2]),
                        child: Text(
                          "/",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[3]),
                        child: Text(
                          "DEL",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[4]),
                        child: Text(
                          "7",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[5]),
                        child: Text(
                          "8",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[6]),
                        child: Text(
                          "9",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[7]),
                        child: Text(
                          "*",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[8]),
                        child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[9]),
                        child: Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[10]),
                        child: Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[11]),
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[12]),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[13]),
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[14]),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[15]),
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[16]),
                        child: Text(
                          "AC",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[17]),
                        child: Text(
                          "0",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[18]),
                        child: Text(
                          ".",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 3, color: Colors.black54)),
                      child: TextButton(
                        onPressed: () => Add_button_val(buttons[19]),
                        child: Text(
                          "=",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

class Calculation_Start extends StatefulWidget {
  String exp;
  Calculation_Start(this.exp);

  @override
  State<Calculation_Start> createState() => _Calculation_StartState();
}

class _Calculation_StartState extends State<Calculation_Start> {
  @override
  double result = 0.0;
  double res = 0.0;
  var j = 0;

  bool IsOperand(var char) {
    int z = 0;
    if (char == '+' || char == '-' || char == '*' || char == '/') {
      z = 1;
    }
    return (z == 1);
  }

  @override
  void call() {
    setState(() {
      calculate();
    });
  }

  void calculate() {
    if (widget.exp[0] == '-') {
      res = -1 * double.parse(widget.exp[1]);
      j = 1;
    } else {
      res = double.parse(widget.exp[1]);
    }
    for (int i = 1; i < widget.exp.length; i = i + 2) {
      var op = widget.exp[i + j];
      var values = widget.exp[i + j + 1];
      if (IsOperand(op) == false) {
        continue;
      } else {
        if (op == '+') {
          res += double.parse(values);
        }
        if (op == '-') {
          res -= double.parse(values);
        }
        if (op == '*') {
          res *= double.parse(values);
        }
        if (op == '/') {
          res /= double.parse(values);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      res.toString(),
      style: TextStyle(fontSize: 26, color: Colors.lightBlue),
      textAlign: TextAlign.right,
    );
  }
}
