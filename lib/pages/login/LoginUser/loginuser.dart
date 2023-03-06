import "package:flutter/material.dart";
import 'package:get/get.dart';
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
    return dialogbase(funcConfirm: Routes.HomeUser, funcCancel: Routes.Login, invisible1: false, invisible2: true, titlelabeltext2: "SENHA", titlelabeltext1: "CPF");
  }
}
