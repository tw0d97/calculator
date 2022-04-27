import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String result;
  late String operation;

  void buttonOnClick(String btnValue) {
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '±') {
      if (textToDisplay[0] != '-') {
        result = '-' + textToDisplay;
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (btnValue == '<-') {
      result = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNum = int.parse(textToDisplay);
      result = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        result = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnValue).toString();
    }

    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(120, 255, 255, 255))),
                  ),
                ),
                alignment: Alignment.bottomRight,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 48, color: Colors.white)),
                  ),
                ),
                alignment: Alignment.bottomRight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumButton(text: 'AC', callBack: buttonOnClick),
                  NumButton(text: 'C', callBack: buttonOnClick),
                  NumButton(text: '<-', callBack: buttonOnClick),
                  SideButton(text: '/', callBack: buttonOnClick)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(text: '7', callBack: buttonOnClick),
                  CalcButton(text: '8', callBack: buttonOnClick),
                  CalcButton(text: '9', callBack: buttonOnClick),
                  SideButton(text: 'X', callBack: buttonOnClick)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(text: '4', callBack: buttonOnClick),
                  CalcButton(text: '5', callBack: buttonOnClick),
                  CalcButton(text: '6', callBack: buttonOnClick),
                  SideButton(text: '+', callBack: buttonOnClick)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(text: '1', callBack: buttonOnClick),
                  CalcButton(text: '2', callBack: buttonOnClick),
                  CalcButton(text: '3', callBack: buttonOnClick),
                  SideButton(text: '-', callBack: buttonOnClick)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(text: '0', callBack: buttonOnClick),
                  CalcButton(text: '±', callBack: buttonOnClick),
                  CalcButton(text: '.', callBack: buttonOnClick),
                  SideButton(text: '=', callBack: buttonOnClick)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
