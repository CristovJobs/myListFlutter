import 'package:flutter/material.dart';
import 'package:mylists/telas/sobre.dart';
import 'telas/home..dart';
import 'layouts/layout.dart';

void main()=>runApp(MyLists());

class MyLists extends StatelessWidget{

 //criando a rota de navegacao entre telas
  final routes = <String, WidgetBuilder>{

     TelaPrincipal.tag : (context) => TelaPrincipal(),
     TelaSobre.tag : (context) => TelaSobre()
  };

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      //============= tema padrao
      title: 'MyLists',
      theme: ThemeData(
        //A cor principal da App
        primaryColorDark: Layout.primary(),
       
        //a color accent para alguns botoes padrao
        accentColor: Layout.secondary(),

        textTheme: TextTheme(headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic, color: Colors.blueGrey ),
        body1: TextStyle(fontSize: 14)
        ),
      ),
      home: TelaPrincipal(),
      routes: routes,
    );
  }
}