import 'package:flutter/material.dart';

class Cores {

  //Todas cores da aplicacao
  static Color primary({double opacity: 1}) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary({double opacity: 1}) => Color.fromRGBO(111, 168, 191, opacity);
  static Color light({double opacity: 1}) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark({double opacity: 1}) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger({double opacity: 1}) => Color.fromRGBO(217, 74, 74, opacity);
  static Color sucess({double opacity: 1}) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info({double opacity: 1}) => Color.fromRGBO(0, 122, 166, opacity);
  static Color werning({double opacity: 1}) => Color.fromRGBO(166, 134, 0, opacity);
  static Color lightWhite({double opacity: 1}) => Color.fromRGBO(241, 240, 240, opacity);

}