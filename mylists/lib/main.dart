import 'package:flutter/material.dart';
import 'package:mylists/layouts/cores.dart';
import 'telas/about.dart';
import 'telas/config.dart';
import 'telas/home..dart';
import 'layouts/textos.dart';

void main()=>runApp(MyLists());

class MyLists extends StatelessWidget{

 //criando a rota de navegacao entre telas
  final routes = <String, WidgetBuilder>{

     TelaPrincipal.tag : (context) => TelaPrincipal(),
     TelaSobre.tag : (context) => TelaSobre(),
     TelaConfig.tag : (context) => TelaConfig()
  };

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      //============= tema padrao
      title: Textos.tituloApp,
      theme: ThemeData(
        //A cor principal da App
        primaryColor: Cores.primary(),
        accentColor: Cores.secondary(),
        textTheme: TextTheme(headline: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 22, fontStyle: FontStyle.normal, color: Cores.primary()),
        body1: TextStyle(fontSize: 14)
        ),
      ),
      home: TelaPrincipal(),
      routes: routes,
    );
  }
}