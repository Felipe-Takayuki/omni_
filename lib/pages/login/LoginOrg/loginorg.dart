import "package:flutter/material.dart";
import 'package:omni_organizado/pages/login/widgets_login/ColumnDialog/dialog_login.dart';
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
    return dialogbase(funcConfirm: Routes.HomeOrg, funcCancel: Routes.Login, invisible1: false, invisible2: true, titlelabeltext2: "SENHA", titlelabeltext1: "CNPJ");
  }
}
