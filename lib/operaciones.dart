import 'package:flutter_bloc/flutter_bloc.dart';


class operaciones extends Cubit<String?>{
  operaciones(): super(null);

  double primernum=0;
  String aux="";
  String aux2="";
  double segundonum=0;
  String history = '';
  String texttodisplay = '';
  String res="";
  String operation="";

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



      texttodisplay = res;
      aux=history.toString()+"\n"+texttodisplay.toString();
      emit(aux);
      
      

  }

}