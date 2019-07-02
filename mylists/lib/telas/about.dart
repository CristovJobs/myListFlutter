import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mylists/layouts/layout.dart';

class TelaSobre extends StatelessWidget{
 
  static String tag = "Tela-Sobre";
 
  @override
  Widget build(BuildContext context) {
    
 
    // 
    return Layout.getContent(context,
     Container(
       child: Center(
         child: Text('About'),
         ),
         
       ),
    );

  }
}