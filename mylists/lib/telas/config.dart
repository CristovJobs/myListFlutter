import 'package:flutter/material.dart';
import 'package:mylists/layouts/layout.dart';

class TelaConfig extends StatelessWidget{

 static String tag = "Tela-Config";  

  @override
  Widget build(BuildContext context) {

    final content = Center(
      child: Text("Config"),
    );
  
    return Layout.getContent(context, content);
  }

}