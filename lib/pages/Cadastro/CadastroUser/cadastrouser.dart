import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';

class OptioncadUser extends StatefulWidget {
  const OptioncadUser({super.key});

  @override
  State<OptioncadUser> createState() => _OptioncadUserState();
}

class _OptioncadUserState extends State<OptioncadUser> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      reverse: true,
      child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Form(child:  Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         TextFormField(
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
             labelStyle: TextStyle(color: Colors.white),
           ),
         ),
         SizedBox(height: _height * 0.02,),
         TextFormField(
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
             labelText: "EMAIL",
             labelStyle: TextStyle(color: Colors.white),
             hintText: "Email para contato",
             hintStyle: TextStyle(color: Colors.white),
           ),
         ),
                SizedBox(height: _height * 0.02,),
         TextFormField(
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
           : Colors.white),
         ),),
                  SizedBox(height: _height * 0.05,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          
          Flexible(
            child: TextButton(onPressed: () {
              Get.back();
            }, child: Text("Voltar",style: TextStyle(color: Colors.white),)),
          ),
         
            Flexible(
              child: TextButton(onPressed: () {
              Get.toNamed(Routes.HomeUser);
        }, child: Text("Confirmar", style: TextStyle(color: Colors.white),)),
            ),
         ],),
       ]),),),
    );
  }
}
