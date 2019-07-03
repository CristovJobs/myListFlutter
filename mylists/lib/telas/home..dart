import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mylists/layouts/layout.dart';
import 'package:mylists/helpers/PrincipalList.dart';

//Essa é a tela principal da aplicação
class TelaPrincipal extends StatelessWidget{

 static String tag = "tela-principal";

  @override
  Widget build(BuildContext context) {

   //criando uma listagens de itens
    final content = PrincipalList();

    return Layout.getContent(context, content);
  }

} 
/*  child: Center( child: Column(
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
     ) */