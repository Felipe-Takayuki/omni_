import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {

  final String titlebutton;
  final Widget action;
  const Button1({super.key, required this.titlebutton, required this.action});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return   Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap:
         (){
         showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Center(child: Text("Conta de \nParticipante ",style: TextStyle(fontSize: _width * 1/17,color: Colors.white), textAlign: TextAlign.center,)),
          backgroundColor: Colors.blue,
          content: widget.action
        );
      });
         }(),
          
        child: Text(
          widget.titlebutton,
          style: TextStyle(fontSize: _width * 1/18, fontFamily: "Montserrat", color: Color.fromRGBO(3, 1, 29, 1), decoration: TextDecoration.underline),textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
