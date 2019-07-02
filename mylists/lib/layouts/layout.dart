import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout {
//conteudo statico
  static Scaffold getContent(BuildContext context, content) {
   
    //retorna um Scaffold
    return Scaffold(
      //criando o appbar
      appBar: AppBar(
       title: Text("Mylists"),
        //inserindo a cor do appbar que é a cabeça do
        //nosso layout
        backgroundColor:Layout.primary(),
        
        //inserindo o titlo no centro
      
       
     ),
     //inserindo o body que é o corpo do nosso layoout
     //ele recebe o nosso content do nosso metodo statico
     body: content,
    );
  }

//cores app
  static Color primary({double opacity: 1}) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary({double opacity: 1}) => Color.fromRGBO(111, 168, 191, opacity);
  static Color light({double opacity: 1}) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark({double opacity: 1}) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger({double opacity: 1}) => Color.fromRGBO(217, 74, 74, opacity);
  static Color sucess({double opacity: 1}) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info({double opacity: 1}) => Color.fromRGBO(0, 122, 166, opacity);
  static Color werning({double opacity: 1}) => Color.fromRGBO(166, 134, 0, opacity);
    
}
