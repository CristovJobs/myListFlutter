import 'package:flutter/material.dart';


class PrincipalList extends StatefulWidget{
 
 static List<Widget> items = List<Widget>();
 
  @override
  _PrincipalListState createState()=>_PrincipalListState();
    
}
class _PrincipalListState  extends State<PrincipalList>{
  @override
  Widget build(BuildContext context) {

    List<Widget> values = List<Widget>();

    if(PrincipalList.items.length ==  0){

     values.add(ListTile(
     leading: Icon(Icons.shopping_basket),
     title: Text('Nenhuma lista ainda'),
     // subtitle: Text('I am now my car is very fast'),
      trailing: Icon(Icons.more_vert),
     
     ));
    }
                           
   
    return  ListView(
     shrinkWrap: true,
     children: (PrincipalList.items.length == 0)? values :PrincipalList.items
  
    );
  }
}