import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mylists/layouts/layout.dart';
import 'package:mylists/telas/sobre.dart';

//Essa é a tela principal da aplicação
class TelaPrincipal extends StatelessWidget{

 static String tag = "tela-principal";

  @override
  Widget build(BuildContext context) {

    return Layout.getContent(context, Center(
      child: Center( child: Column(
        children: <Widget>[
          Text('Hello Mundo'),
           RaisedButton(
            child: Text("Sobre"),
            onPressed: (){
              //chamando a tela sobre
              Navigator.of(context).pushNamed(TelaSobre.tag);
            }
          )
        ],
      ), 
     )
    ));
  }

} 