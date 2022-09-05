
import 'package:calc/operaciones.dart';
import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'botones.dart';

class estructura extends StatelessWidget {
  const estructura({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final state = context.watch<operaciones>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Color(0xff472D2D),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/calcwall.png'), // imagen de fondo
            fit: BoxFit.cover,

          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  state != null ? "$state" : "0",
                  style: TextStyle(fontSize: 48),
                ),
              ),
              alignment: Alignment(1.0,1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botones(text: 'AC', fillColor: 0xff472D2D ),
                botones(text: 'C', fillColor: 0xff472D2D  ),
                botones(text: '.', fillColor: 0xff472D2D ),
                botones(text: '/', fillColor: 0xff472D2D ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botones(text: '7', fillColor: 0xffA77979),
                botones(text: '8', fillColor: 0xffA77979),
                botones(text: '9', fillColor: 0xffA77979),
                botones(text: 'X', fillColor: 0xff472D2D),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botones(text: '4', fillColor: 0xffA77979),
                botones(text: '5', fillColor: 0xffA77979),
                botones(text: '6', fillColor: 0xffA77979),
                botones(text: '-', fillColor: 0xff472D2D),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botones(text: '1', fillColor: 0xffA77979),
                botones(text: '2', fillColor: 0xffA77979),
                botones(text: '3', fillColor: 0xffA77979),
                botones(text: '+', fillColor: 0xff472D2D),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                botones(text: '=', fillColor: 0xff472D2D),

              ],
            ),


          ],),

      ) ,

    );
  }



}