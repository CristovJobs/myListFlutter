import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mylists/telas/config.dart';
import 'package:mylists/telas/home..dart';
import 'package:mylists/telas/about.dart';


class Layout {

  static final telas = [
    TelaPrincipal.tag,
    TelaSobre.tag,
    TelaConfig.tag
  ];
  static int curretItem = 0;
   //conteudo statico
  static Scaffold getContent(BuildContext context, content) {
   
    //retorna um Scaffold
    return Scaffold(
      //criando o appbar
       appBar: AppBar(
       title: Text("Mylists"),
       backgroundColor:Layout.primary(),
  
       
     ),
     //inserindo o body que é o corpo do nosso layoout
     //ele recebe o nosso content do nosso metodo statico
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: curretItem,
       fixedColor:secondary(),
       items: <BottomNavigationBarItem>[

          BottomNavigationBarItem( icon:Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem( icon:Icon(Icons.help), title: Text("About")),
          BottomNavigationBarItem( icon:Icon(Icons.settings), title: Text("Settings"))
       ],
       onTap: (int i){
          //print(i);
           curretItem = i;
           Navigator.of(context).pushNamed(telas[curretItem]);
       }
     ),
     body: content,
    );
  }
   //cores da aplicacao
  static Color primary({double opacity: 1}) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary({double opacity: 1}) => Color.fromRGBO(111, 168, 191, opacity);
  static Color light({double opacity: 1}) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark({double opacity: 1}) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger({double opacity: 1}) => Color.fromRGBO(217, 74, 74, opacity);
  static Color sucess({double opacity: 1}) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info({double opacity: 1}) => Color.fromRGBO(0, 122, 166, opacity);
  static Color werning({double opacity: 1}) => Color.fromRGBO(166, 134, 0, opacity);
    

}
