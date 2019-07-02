import 'package:flutter/material.dart';
import 'telas/about.dart';
import 'telas/config.dart';
import 'layouts/layout.dart';
import 'telas/home..dart';

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
      title: 'MyLists',
      theme: ThemeData(
        //A cor principal da App
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        textTheme: TextTheme(headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blueGrey ),
        body1: TextStyle(fontSize: 14)
        ),
      ),
      home: TelaPrincipal(),
      routes: routes,
    );
  }
}