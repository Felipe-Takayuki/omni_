import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/utils/colors/colors.dart';
class ButtonContainer extends StatefulWidget {
  final Widget text;
  final double marginHorizontal;
  final double marginVertical;
  final Color? color;
  final double largura;
  final double altura;
  final LinearGradient? gradient;
  const ButtonContainer({super.key,required this.altura, required this.largura , required this.text,  this.color, this.gradient, required this.marginHorizontal, required this.marginVertical });

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {

  @override
  Widget build(BuildContext context) { 

    
    
    return    Container(
                    // Tamanho do container de Cadastrar presença ------------------------
                    margin: EdgeInsets.symmetric(horizontal: widget.marginHorizontal, vertical: widget.marginVertical),
                    width: widget.largura , height: widget.altura ,
                     decoration: BoxDecoration(
                     gradient: widget.gradient,
                    color: widget.color,
                    borderRadius: BorderRadius.circular(15)),child: 
                    // Column ------------------------------------------------------------
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                      
                      Row(
                        children: [
                        
                          widget.text,
                                 
                        ],
                      ),
                      ],),
                    );
  }
}