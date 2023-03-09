import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/utils/colors/colors.dart';

class dialogbase extends StatefulWidget {
  final dynamic funcConfirm;
  final Widget titledialog;
  final dynamic funcCancel;
  final String titlelabeltext2;
  final String titlelabeltext1;
  final bool invisible1;
  final bool invisible2;
  const dialogbase({super.key, required this.funcConfirm, required this.funcCancel ,required this.invisible1, required this.invisible2,required this.titlelabeltext2, required this.titlelabeltext1, required this.titledialog});
 
  @override
  State<dialogbase> createState() => _dialogbaseState();
}

class _dialogbaseState extends State<dialogbase> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Form(
      child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Form(child:  Column(
       mainAxisSize: MainAxisSize.min,
       children: [
       Center(child: Column(
                      children: [
                        widget.titledialog
                        // Text("Conta de participante ",style: TextStyle(fontSize: _width * 1/17,color: Colors.white), textAlign: TextAlign.center,),
                        // Text("de Eventos",style: TextStyle(fontSize: _width * 1/20,color: FontColor.fontcolor3), textAlign: TextAlign.center,),
                      ],
                    )),
                    SizedBox(height: _height * 0.02,),
          SizedBox(
          width: _width * 0.94,
          height: _height * 1/15,
             child: TextFormField(
              obscureText: widget.invisible1,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 disabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.red, width: 1.5),
                 ),
                 enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 labelText: widget.titlelabeltext1,
                 
                 labelStyle: TextStyle(color
             : Colors.white, fontSize: _width * 1/20),
               ),
             ),
           ),
         SizedBox(height: _height * 0.02,),
          SizedBox(
          width: _width * 0.94,
          height: _height * 1/15,
             child: TextFormField(
              obscureText: widget.invisible2,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 disabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.red, width: 1.5),
                 ),
                 enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(color: Colors.white, width: 1.5),
                 ),
                 labelText: widget.titlelabeltext2,
                 
                 labelStyle: TextStyle(color
             : Colors.white, fontSize: _width * 1/20),
               ),
             ),
           ),
         SizedBox(height: _height * 0.03,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          Flexible(
            child: TextButton(onPressed: () {
               Get.toNamed(widget.funcCancel);
            }, child: Text("Voltar",style: TextStyle(fontSize: _width * 1/29 ,color: Colors.white),)),
          ),
            Flexible(
              child: TextButton(onPressed: () {
              Get.toNamed(widget.funcConfirm);
        }, child: FittedBox(child: Text("Confirmar", style: TextStyle(fontSize: _width * 1/29,color: Colors.white),maxLines: 1,))),
            ),
         ],),
       ]),),),
    );
  }
}