import 'package:calc/operaciones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class botones extends StatelessWidget{
  final String text;
  final int fillColor;

  const botones({
    required this.text, required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<operaciones>().recibir(text);
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(fillColor),
        ),
        child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.white ),

        ),


        ),



    );
  }



  /*@override
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
  }*/}