import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mylists/telas/config.dart';
import 'package:mylists/telas/home..dart';
import 'package:mylists/telas/about.dart';
import 'package:mylists/layouts/cores.dart';
import 'package:mylists/layouts/textos.dart';
import 'package:mylists/helpers/PrincipalList.dart';



class Layout {
  static final telas = [TelaPrincipal.tag, TelaSobre.tag, TelaConfig.tag];
  static int curretItem = 0;

  
  //conteudo statico
  static Scaffold getContent(BuildContext context, content) {

    //retorna um Scaffold
    return Scaffold(
      //criando o appbar
      appBar: AppBar(
        title: Text(Textos.tituloApp),
        backgroundColor: Cores.primary(),
        actions: _getActions(context),
      ),
      //inserindo o body que é o corpo do nosso layoout
      //ele recebe o nosso content do nosso metodo statico
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curretItem,
          fixedColor: Cores.primary(),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem( icon: Icon(Icons.home),title: Text( "Home")),
            BottomNavigationBarItem(icon: Icon(Icons.help), title: Text("About")),
            BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings"))
          ],
          onTap: (int i) {
            //print(i);
            curretItem = i;
            Navigator.of(context).pushNamed(telas[curretItem]);
          }),
      body: content,
      backgroundColor: Cores.lightWhite(),
    );
  }
  static List<Widget> _getActions(BuildContext context){
    List<Widget> items = List<Widget>();

    if (telas[curretItem] != TelaPrincipal.tag) {
      
      return items;

    } 

    final TextEditingController _c = TextEditingController();

    items.add(
      GestureDetector(
            onTap: () {
              //start alert dialog 
              showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext ctx) {

                    final inputText = TextField(
                      controller: _c,
                      decoration: InputDecoration(
                        hintText: 'Nome do item', 
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    );
                    return AlertDialog(
                      title: Text(Textos.newList),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                             inputText
                          ],
                        ),
                        padding: EdgeInsets.only(right: 0),
                      ),
                    
                      actions: <Widget>[
                        RaisedButton(
                          color: Cores.danger(),
                           onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          
                          child: Text(Textos.cancel, style: TextStyle(color: Cores.light())),
                        ),
                        RaisedButton(
                          color: Cores.primary(),
                          onPressed: () {
                            
                             PrincipalList.items.add(
                             ListTile(
                             leading: Icon(Icons.shopping_basket),
                             title: Text(_c.text),
                            // subtitle: Text('I am now my car is very fast'),
                             trailing: Icon(Icons.more_vert),
                                )
                            );
                           
                            Navigator.of(ctx).pushNamed(TelaPrincipal.tag);
                          },
                          child: Text(Textos.adding, style: TextStyle(color: Cores.light()),),
                          ),
                         
                      ],
                    );
                  });
                 },
            child: Icon(Icons.add),
            ),
          );
       items.add(Padding(padding: EdgeInsets.only(right: 20)));
    return items;
  }

}
