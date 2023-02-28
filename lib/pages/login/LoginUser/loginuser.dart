import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';

class OptionLoginUser extends StatefulWidget {
  const OptionLoginUser({super.key});

  @override
  State<OptionLoginUser> createState() => _OptionLoginUserState();
}

class _OptionLoginUserState extends State<OptionLoginUser> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Form(
      child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Form(child:  SingleChildScrollView(
        reverse: true,
        child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
          SizedBox(
          width: _width * 0.8,
          height: _height * 1/14,
             child: TextFormField(
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
                 labelText: "CPF",
                 labelStyle: TextStyle(color
             : Colors.white, fontSize: _width * 1/20),
               ),
             ),
           ),
           SizedBox(height: _height * 0.02,),
          
               
           SizedBox(
          width: _width * 0.8,
          height: _height * 1/14,
             child: TextFormField(
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
                 labelText: "SENHA",
                 labelStyle: TextStyle(color
             : Colors.white, fontSize: _width * 1/20),
             ),),
           ),
                    SizedBox(height: _height * 0.05,),
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          
          Flexible(
            child: TextButton(onPressed: () {
              Get.back();
            }, child: Text("Voltar",style: TextStyle(fontSize: _width * 1/25 ,color: Colors.white),)),
          ),
         
            Flexible(
              child: TextButton(onPressed: () {
              Get.toNamed(Routes.HomeUser);
        }, child: Text("Confirmar", style: TextStyle(fontSize: _width * 1/25,color: Colors.white),maxLines: 1,)),
            ),
         ],),
         ]),
      ),),),
    );
  }
}
