import 'package:calc/estructura.dart';
import 'package:calc/operaciones.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(CalcApp());
}


class CalcApp extends StatelessWidget {
  CalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => operaciones(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculadora',

        home: estructura(),
      ),
    );
  }






}


