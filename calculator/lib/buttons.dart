import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Function callBack;

  const CalcButton({required this.text, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          onPressed: () => callBack(text),
          color: Color.fromARGB(255, 61, 61, 61),
          textColor: Colors.white,
        ),
      ),
    );
  }
}

class NumButton extends StatelessWidget {
  final String text;
  final Function callBack;

  const NumButton({required this.text, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          onPressed: () => callBack(text),
          color: Colors.grey,
          textColor: Colors.black,
        ),
      ),
    );
  }
}

class SideButton extends StatelessWidget {
  final String text;
  final Function callBack;

  const SideButton({required this.text, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          onPressed: () => callBack(text),
          color: Colors.orange,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
