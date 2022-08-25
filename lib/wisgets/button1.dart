import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class button1 extends StatelessWidget{
  final String text;
  final int fillColor;
  final Function callback;

  const button1({
   this.text, this.fillColor, this.callback
});



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color (fillColor) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),

          ),
          child: Text(text,
            style: TextStyle(fontSize: 24, color: Colors.white ),

          ),
          onPressed: () => callback(text),


        ),
      ),
    );
  }}