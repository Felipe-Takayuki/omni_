import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
class CadastroOrg extends StatefulWidget {
  const CadastroOrg({super.key});

  @override
  State<CadastroOrg> createState() => _CadastroOrgState();
}

class _CadastroOrgState extends State<CadastroOrg> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  
  Widget build(BuildContext context) {
          var _height = MediaQuery.of(context).size.height;
          var _width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: SafeArea(child: Center(child: Container(
        width: _width,
        height: _height,
        color: Colors.blue,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
              
            children: [
              const AutoSizeText("Conta de", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontFamily: "Montserrat", fontSize: 24),),
              const AutoSizeText("Empresa", style: TextStyle(color: Color.fromRGBO(228, 228, 228, 1), fontSize: 20, fontFamily: "Montserrat"),),
               SizedBox(height: _height * 0.060,),
              GestureDetector(
                onTap: (){
                  print("Mudar foto");
                },
                child: Container(width: _height / 4, height: _height / 4 , decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 65, 127, 235),))),
                        SizedBox(height: _height * 0.060,),
              Form(child: Column(
              children: [
                                  SizedBox(
                                    width: _width * 3.2/4,
                                    child: TextFormField(decoration: InputDecoration(labelText: "NOME",labelStyle: TextStyle(color: Colors.white), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)  ),enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.5)  ) ),validator: (value) {
                                    if(value!.isEmpty){
                                      return "Preencha todos os campos";
                                    }
                                    }),
                                  ),
                                       SizedBox(height: _height * 0.02,),
                                 SizedBox(
                                  width: _width * 3.2/4,
                                   child: TextFormField(decoration: const InputDecoration(labelText: "EMAIL",labelStyle: TextStyle(color: Colors.white), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)  ),enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.5),   ), hintText: "Email para contato", hintStyle: TextStyle(color: Colors.white) ),validator: (value) {
                                     if(value!.isEmpty){
                                       return "Preencha todos os campos";
                                     }
                                   }),
                                 ),
                                       SizedBox(height: _height *0.02),
                                  SizedBox(
                                    width: _width * 3.2/4,
                                    child: TextFormField(decoration:const  InputDecoration(labelText: "CNPJ",labelStyle: TextStyle(color: Colors.white), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)  ),enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.5)  ) ),validator: (value) {
                                      if(value!.isEmpty){
                                        return "Preencha todos os campos";
                                      }
                                    }),
                                  ),
                                       SizedBox(height: _height * 0.02,),
                                  SizedBox(
                                    width: _width * 3.2/4,
                                    child: TextFormField(decoration: const InputDecoration(labelText: "SENHA",labelStyle: TextStyle(color: Colors.white), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)  ),enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.5)  ) ),validator: (value) {
                                        if(value!.isEmpty){
                                          return "Preencha todos os campos";
                                        }
                                      }),
                                  ),
                                    SizedBox(height: _height * 0.05,),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                                  
                                       SizedBox(
                                        width: _width * 2/4,
                                         child: TextButton(onPressed: (){
                                           Navigator.pop(context);
                                         }, child: Text("Voltar", style: TextStyle(fontSize: 15,decoration: TextDecoration.underline, color: Colors.white),)),
                                       ),
                                      
                                       SizedBox(
                                        width: _width * 2/4,
                                         child: TextButton(onPressed: (){
                                         
                                         }, child: Text("Confirmar", style: TextStyle(fontSize: 15,decoration: TextDecoration.underline, color: Colors.white),maxLines: 1,)),
                                       ),
                                
                                     ],)
              ],
              )),
              
            ],
          ),
        ),
      ),)),
    );
  }
}