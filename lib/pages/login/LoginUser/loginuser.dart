import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';
import 'package:omni_organizado/pages/login/widgets_login/TextField/textfield_login.dart';

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
          ResponsiveTextField(titlelabeltext: "CPF", invisible: false),
          SizedBox(height: _height * 0.02,),
          ResponsiveTextField(titlelabeltext: "SENHA", invisible: true),
          SizedBox(height: _height * 0.05,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          Flexible(
            child: TextButton(onPressed: () {
              Get.back();
            }, child: Text("Voltar",style: TextStyle(fontSize: _width * 1/26 ,color: Colors.white,decoration: TextDecoration.underline),)),
          ),
            Flexible(
              child: TextButton(onPressed: () {
              Get.toNamed(Routes.HomeUser);
        }, child: Text("Confirmar", style: TextStyle(fontSize: _width * 1/26,color: Colors.white,decoration: TextDecoration.underline),maxLines: 1,)),
            ),
         ],),
         ]),
      ),),),
    );
  }
}
