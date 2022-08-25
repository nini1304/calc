import 'package:calc/wisgets/button1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalcApp());
}


class CalcApp extends StatefulWidget {
  CalcApp({Key key}) : super(key: key);



  @override
  _CalcApp createState() => _CalcApp();
}

class _CalcApp extends State<CalcApp> {
  double primernum;

  String aux2;
  double segundonum;
  String history = '';
  String texttodisplay = '';
  String res;
  String operation;

  void recibir(String btnVal){  //recibir los valores numericos que se apreten
    print(btnVal);
    if(btnVal == 'C') {
      texttodisplay = '';
      primernum = 0;
      segundonum = 0;
      res = '';
    }else if(btnVal == 'AC'){
      texttodisplay = '';
      primernum = 0;
      segundonum = 0;
      res = '';
      history = '';


    }else if(btnVal == '.'){

      res = texttodisplay.toString() + btnVal.toString();
      aux2=btnVal;



    } else if(btnVal == '+' || btnVal == '-' || btnVal == 'X' || btnVal == '/'){
      primernum= double.parse(texttodisplay);
      res='';
      operation=btnVal;


    }else if(btnVal == '='){
      segundonum= double.parse(texttodisplay);
      if(operation == '+'){
        res= (primernum + segundonum).toString();
        history = primernum.toString() + operation.toString() + segundonum.toString();
      }
      if(operation == '-'){
        res= (primernum - segundonum).toString();
        history = primernum.toString() + operation.toString() + segundonum.toString();
      }
      if(operation == 'X'){
        res= (primernum * segundonum).toString();
        history = primernum.toString() + operation.toString() + segundonum.toString();
      }
      if(operation == '/'){
        res= (primernum / segundonum).toString();
        history = primernum.toString() + operation.toString() + segundonum.toString();
      }
    }else {
      if(aux2== '.'){

        res = texttodisplay.toString() + btnVal.toString();

      }else{
        res = int.parse(texttodisplay + btnVal).toString();
      }

    }

    setState(() {

      texttodisplay = res;
    });
  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Calculadora',


      home: Scaffold(
        appBar: AppBar(

          title: Text('Calculadora'), // texto de la barra
          backgroundColor:Color (0xff553939) , // color personalizado para barra


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
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: TextStyle(fontSize: 24 , color: Color(0xff704F4F)),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    texttodisplay,
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button1(text: 'AC', fillColor: 0xff472D2D ,callback: recibir),
                button1(text: 'C', fillColor: 0xff472D2D , callback: recibir ),
                button1(text: '.', fillColor: 0xff472D2D , callback: recibir),
                button1(text: '/', fillColor: 0xff472D2D , callback: recibir),

              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button1(text: '7', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '8', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '9', fillColor: 0xffA77979, callback: recibir),
                  button1(text: 'X', fillColor: 0xff472D2D, callback: recibir),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button1(text: '4', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '5', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '6', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '-', fillColor: 0xff472D2D, callback: recibir),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button1(text: '1', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '2', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '3', fillColor: 0xffA77979, callback: recibir),
                  button1(text: '+', fillColor: 0xff472D2D, callback: recibir),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  button1(text: '=', fillColor: 0xff472D2D, callback: recibir),

                ],
              ),


          ],),

        ) ,
      ),
    );
  }
}
