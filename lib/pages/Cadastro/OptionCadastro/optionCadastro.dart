
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
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  Center(

          child: Column(
          
          children: [
                Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Olá!",
                    style: TextStyle(fontSize: _width * 1/16,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
               Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Seja bem vindo(a) ao nosso\naplicativo!",
                    style: TextStyle(fontSize: _width * 1/18, fontWeight: FontWeight.w700)
                  ),
                ),
              ),
               Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Que tipo de conta deseja criar?",
                    style: TextStyle(fontSize: _width * 1/18)
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
                      title: Center(child: Text("Conta de \nParticipante ",style: TextStyle(fontSize: _width * 1/17,color: Colors.white), textAlign: TextAlign.center,)),
                      backgroundColor: Colors.blue,
                      content: OptioncadUser()
                    );
                  });
             
             
              }(),
            
                    child: Text(
                      "Uma conta de participante de\n.eventos",
                      style: TextStyle(fontSize: _width * 1/18, fontFamily: "Montserrat", color: Color.fromRGBO(3, 1, 29, 1), decoration: TextDecoration.underline),textDirection: TextDirection.rtl,
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
                    child: Text(
                      ".Uma conta de empresa",
                      style: TextStyle(fontSize: _width * 1/18, fontFamily: "Montserrat", color: Color.fromRGBO(3, 1, 29, 1), decoration: TextDecoration.underline),textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2,),
              Flexible(child: Image(width: _width * 0.8,height: _height * 1/8,image:  AssetImage("assets/images/Logo/logotitle.png")))
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