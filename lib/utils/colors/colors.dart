import "dart:ui";
import "package:flutter/material.dart";


abstract class BackGroundColor{
 static Color backgroundColor1 = Color.fromRGBO(39, 127, 243, 1);
 static Color backgroundColor2 = Color.fromRGBO(255, 255, 255, 1);
 static Color BackGroundColor3 = Color.fromRGBO(224, 232, 248, 1);
}

abstract class FontColor{
  static Color fontcolor1 = Color.fromRGBO(255, 255, 255, 1);
  static Color fontcolor2 = Color.fromRGBO(3, 1, 29, 1);
  static Color fontcolor3 = Color.fromRGBO(228, 228, 228, 1);
  
}

abstract class ListaCores{
  
    static Color listcor1 = Color.fromRGBO(42, 113, 205, 1);
    static Color listcor2 =  Color.fromRGBO(103, 116, 231, 1);
    static LinearGradient a = LinearGradient( begin:Alignment(-1, -0.012),
                    end:Alignment(1, 0.482),colors: [
                    ListaCores.listcor1,
                    ListaCores.listcor2
                    ],  );
}