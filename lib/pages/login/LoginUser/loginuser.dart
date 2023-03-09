import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:omni_organizado/utils/colors/colors.dart';
import 'package:omni_organizado/Routes/routes.dart';
import 'package:omni_organizado/pages/login/widgets_login/ColumnDialog/dialog_login.dart';

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
    return dialogbase(titledialog: Center(
      child: Column(children: [
           Text("Conta de participante ",style: TextStyle(fontSize: _width * 1/17,color: Colors.white), textAlign: TextAlign.center,),
           Text("de Eventos",style: TextStyle(fontSize: _width * 1/20,color: FontColor.fontcolor3), textAlign: TextAlign.center,),
           SizedBox(height: 0.02,)
      ],),
    ),funcConfirm: Routes.HomeUser, funcCancel: Routes.Login, invisible1: false, invisible2: true, titlelabeltext2: "SENHA", titlelabeltext1: "CPF");
  }
}
