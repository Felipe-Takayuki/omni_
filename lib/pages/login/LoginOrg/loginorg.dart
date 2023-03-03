import "package:flutter/material.dart";
import 'package:omni_organizado/pages/login/widgets_login/TextField/textfield_login.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';
class OptionLoginOrg extends StatefulWidget {
  const OptionLoginOrg({super.key});

  @override
  State<OptionLoginOrg> createState() => _OptionLoginOrgState();
}

class _OptionLoginOrgState extends State<OptionLoginOrg> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Form(
      child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Form(child:  Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         ResponsiveTextField(titlelabeltext: "CNPJ", invisible: false),
         SizedBox(height: _height * 0.02,),
         ResponsiveTextField(titlelabeltext: "SENHA", invisible: true),
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
              Get.toNamed(Routes.HomeOrg);
        }, child: Text("Confirmar", style: TextStyle(fontSize: _width * 1/25,color: Colors.white),maxLines: 1,)),
            ),
         ],),
       ]),),),
    );
  }
}
