// ignore_for_file: avoid_print

import "package:auto_size_text/auto_size_text.dart";
import"package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';
import 'package:omni_organizado/pages/Cadastro/CadastroUser/cadastrouser.dart';
class OptionsCadastro extends StatefulWidget {
  const OptionsCadastro({super.key});

  @override
  State<OptionsCadastro> createState() => _OptionsCadastroState();
}

class _OptionsCadastroState extends State<OptionsCadastro> {
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
                      "Seja bem vindo(a) ao nosso\naplicativo!",
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
                    "Que tipo de conta deseja criar?",
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
                      title: Center(child: Text("Conta de \nParticipante ",style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)),
                      backgroundColor: Colors.blue,
                      content: OptioncadUser()
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
                      Get.toNamed(Routes.CadastroOrg);
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
// class ColumnwithButtons extends StatefulWidget {
//   const ColumnwithButtons({super.key});

//   @override
//   State<ColumnwithButtons> createState() => _ColumnwithButtonsState();
// }

// class _ColumnwithButtonsState extends State<ColumnwithButtons> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Text("Uma conta de participante de eventos."),
//         Text("Uma conta de empresa."),
//       ],
//     );
//   }
// }

// //-----------------------------------------------------------------------------------------

// class ColumnwithTexts extends StatefulWidget {
//   const ColumnwithTexts({super.key});

//   @override
//   State<ColumnwithTexts> createState() => _ColumnwithTextsState();
// }

// class _ColumnwithTextsState extends State<ColumnwithTexts> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(child: Text("Olá!")),
//         Text("Seja bem vindo(a) ao nosso\naplicativo!"),
//         Text("Que tipo de conta deseja criar?"),
       
//       ],
//     );
//   }
// }