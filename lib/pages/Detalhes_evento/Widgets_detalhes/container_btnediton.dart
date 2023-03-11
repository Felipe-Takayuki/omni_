import 'package:flutter/material.dart';

class ButtonEdition extends StatefulWidget {
  final double largura;
  final double altura;
  final Widget icon;
  final String description;
  final String title;
  final double titleFontSize;
  final double descriptionFontSize;
  final bool? editavel;
  final double space;
  final dynamic? func;
  final Color textColor;
  final double buttonsize;
  const ButtonEdition({super.key,required this.buttonsize, required this.altura, required this.largura, required this.icon, required this.title,required this.titleFontSize, required this.description,required this.descriptionFontSize, required this.textColor, this.editavel, required this.space, this.func});

  @override
  State<ButtonEdition> createState() => _ButtonEditionState();
}

class _ButtonEditionState extends State<ButtonEdition> {
  @override
  Widget build(BuildContext context) {
    var a = widget.editavel;
    return Container(
      decoration: BoxDecoration(
       color: Colors.blue,
       borderRadius: BorderRadius.circular(10)
      ),
     
    
      height: widget.altura,

      child: Row(
        children: [
          SizedBox(width: widget.space + widget.space/1,),
          widget.icon,
          SizedBox(width: widget.space +  widget.space/1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: TextStyle(fontSize: widget.titleFontSize , color: widget.textColor),),
              SizedBox(height: widget.space/4,),
              Text(widget.description, style: TextStyle(fontSize: widget.descriptionFontSize, color: widget.textColor ),),
            ],
          ), 
          Spacer(),
          a  == true? ButtonEdit(tamanho: widget.buttonsize ,funcao: widget.func):ButtonEditInative(),
        SizedBox(width:  widget.space ,)
        ],
      ),
    );
  }
}

class ButtonEdit extends StatefulWidget {
   final dynamic funcao;
   final double tamanho;
  const ButtonEdit({super.key, required this.funcao, required this.tamanho});

  @override
  State<ButtonEdit> createState() => _ButtonEditState();
}

class _ButtonEditState extends State<ButtonEdit> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  widget.funcao,
      child: Image.asset("assets/images/Icons/icon_edit.png", width: widget.tamanho, height: widget.tamanho,),
    );
  }
}

class ButtonEditInative extends StatelessWidget {
  const ButtonEditInative({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}