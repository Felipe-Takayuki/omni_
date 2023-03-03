import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/utils/colors/colors.dart';
class ButtonContainer extends StatefulWidget {
  final String text;
  final Color? color;
  final double largura;
  final double altura;
  final dynamic colors1;
  final dynamic colors2;

  const ButtonContainer({super.key,required this.altura, required this.largura ,required this.text,  this.color,    this.colors1,   this.colors2, });

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  @override
  Widget build(BuildContext context) { 

    
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return    GestureDetector(
                onTap: () {
                },
                child: Container(
                // Tamanho do container ------------------------
                width:widget.largura,  height: widget.altura,
                 decoration: BoxDecoration(color: widget.color, borderRadius: BorderRadius.circular(15),gradient: LinearGradient( begin:Alignment(-1, -0.012),
              end:Alignment(1, 0.482),colors:[
                widget.colors1
              ]
)),
               margin: EdgeInsets.only(
                  left: _width * 0.03
                 ) ,child: 
                // Column ------------------------------------------------------------
                
                Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                  
                  Padding(
                    padding:  EdgeInsets.only(left: _width * 0.01, bottom: _width * 0.01),
                    child: Row(
                      children: [
                      
                       Flexible(child: Text(widget.text,style: TextStyle(fontSize: _width * 0.035, fontFamily: "Montserrat", color: Color.fromARGB(255, 3, 0, 0)),)),
                               
                      ],
                    ),
                  ),
                  ],),
                ),
                      );
  }
}