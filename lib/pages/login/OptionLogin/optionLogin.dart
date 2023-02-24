import "package:auto_size_text/auto_size_text.dart";
import"package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';
import 'package:omni_organizado/pages/Cadastro/CadastroUser/cadastrouser.dart';
import 'package:omni_organizado/pages/login/LoginOrg/loginorg.dart';
import '../LoginUser/loginuser.dart';
class OptionsLogin extends StatefulWidget {
  const OptionsLogin({super.key});

  @override
  State<OptionsLogin> createState() => _OptionsLoginState();
}

class _OptionsLoginState extends State<OptionsLogin> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:  Center(

          child: Column(

  children: [
 const     Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: AutoSizeText(
                      "Olá!",
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),maxFontSize: 22,minFontSize: 11,
                    ),
                  ),
                ),
              ),
            const    Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: AutoSizeText(
                      "Seja bem vindo(a)\nnovamente ao nosso\naplicativo!",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),maxFontSize: 20, minFontSize: 10,
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "Que tipo de conta tem?",
                    style: TextStyle(fontSize: 18),maxFontSize: 18,minFontSize: 8,
                  ),
                ),
              ),
              Spacer(flex: 2,),
                Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap:() => (){
                      showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Center(child: Flexible(child: Text("Conta de \nParticipante ",style: TextStyle(color: Colors.white), textAlign: TextAlign.center,))),
                      backgroundColor: Colors.blue,
                      
                      content: OptionLoginUser()
                    );
                  });
     
     
      }(),
    
                    child: AutoSizeText(
                      "Uma conta de participante de\n.eventos",
                      style: TextStyle(fontSize: 16, fontFamily: "Montserrat", color: Color.fromRGBO(3, 1, 29, 1), decoration: TextDecoration.underline),textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
                Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child:  GestureDetector(
                    onTap: () {
                       showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Center(child: Flexible(child: Text("Conta de \nParticipante ",style: TextStyle(color: Colors.white), textAlign: TextAlign.center,))),
                      backgroundColor: Colors.blue,
                      
                      content: OptionLoginOrg()
                    );
                  });
     
                    },
                    child: AutoSizeText(
                      ".Uma conta de empresa",
                      style: TextStyle(fontSize: 16, fontFamily: "Montserrat", color: Color.fromRGBO(3, 1, 29, 1), decoration: TextDecoration.underline),textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2,),
              const Flexible(child: Image(image:  AssetImage("assets/images/Logo/logotitle.png")))
  ],
          ),
      )
    );
  }
}