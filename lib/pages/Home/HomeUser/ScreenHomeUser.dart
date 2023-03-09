
import "package:flutter/material.dart";

import "../widgets_home/button.dart";


class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    var tamanhocontainer = MediaQuery.of(context).size.width * 0.3;
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _width * 0.98,
        height: _height * 0.98,
        child: Padding(
          padding:  EdgeInsets.only(left: _height * 0.02),
          // Collumn ----------------------------------------
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: _height * 1/8,),
             Flexible(child: Text("Olá, [nome] 👋 ", style: TextStyle(fontSize: _width * 0.05, fontFamily: "Montserrat", color: Color.fromRGBO(144, 142, 142, 1)),)),
             Flexible(child: Text("Sua agenda", style: TextStyle(fontSize: _width * 0.08, fontFamily: "Montserrat"),)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            GestureDetector(onTap: () {
           
            },child: Container( 
              height: _width * 0.3,
               width: _width * 0.95,
          decoration: BoxDecoration( gradient: LinearGradient( begin:Alignment(-1, -0.012),
              end:Alignment(1, 0.482),colors: [

              Color.fromRGBO(42, 113, 205, 1),
              Color.fromRGBO(103, 116, 231, 1)
          ],  ), borderRadius:BorderRadius.circular(15) ), child: 
          // Row ------------------------------------
          Row(children: [
              SizedBox(
              width: _width * 0.05,
              ),
              Flexible(child: Text("Próximo\nevento",style: TextStyle(fontSize: _width * 0.03, fontFamily:"Montserrat-semibold", color: Color.fromRGBO(180, 199, 255, 1) ),)),
              Spacer(flex: 2,),
              Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end,children: [Text("Palestra Científica", style: TextStyle(fontSize: _width * 0.05, fontFamily: "Montserrat-Extrabold", color: Colors.white),),
              Flexible(child: Text("Univem - 8 jan 2023", style: TextStyle(fontSize: 12 , fontFamily: "Montserrat-Regular", color: Colors.white),))
              ],),
              SizedBox(
              width: _width * 0.01,
              ),
          ],),)),
      SizedBox(height: _height * 0.02),
            Text("Ações rápidas", style: TextStyle(fontSize: _width * 0.04, fontFamily: "Montserrat"),),
             SizedBox(height: _height * 0.02),
            // Row ----------------------------------------------------------------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                // button Marcar presença
                  GestureDetector(
                    onTap: () {
                    print("click");
                    },
                    child:
                    ButtonContainer(
                      altura: tamanhocontainer, largura: tamanhocontainer,
                      text: Flexible(child: Padding(
                   padding:  EdgeInsets.all(_width * 0.02),
                   child: Text("Cadastrar presença em evento",style: TextStyle(fontSize: _width * 0.035, fontFamily: "Montserrat", color: Colors.white),)),),
                 
                      marginHorizontal: _width * 0.00,marginVertical: 0,gradient:  LinearGradient( begin:Alignment(-1, -0.012),
                    end:Alignment(1, 0.482),colors: [
                    Color.fromRGBO(42, 113, 205, 1),
                    Color.fromRGBO(103, 116, 231, 1)
                    ],  ),)
                    //  Container(
                    // // Tamanho do container de Cadastrar presença ------------------------
                    // width: tamanhocontainer, height: tamanhocontainer,
                    //  decoration: BoxDecoration(gradient: LinearGradient( begin:Alignment(-1, -0.012),
                    // end:Alignment(1, 0.482),colors: [
                    // Color.fromRGBO(42, 113, 205, 1),
                    // Color.fromRGBO(103, 116, 231, 1)
                    // ],  ), borderRadius: BorderRadius.circular(15)),child: 
                    // // Column ------------------------------------------------------------
                    // Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                      
                    //   Padding(
                    //    padding:  EdgeInsets.symmetric(horizontal: _width * 0.02, vertical: _width * 0.025),
                    //     child: Row(
                    //       children: [
                          
                    //         Flexible(child: Text("Cadastrar presença em evento",style: TextStyle(fontSize: _width * 0.035, fontFamily: "Montserrat", color: Colors.white),)),
                                   
                    //       ],
                    //     ),
                    //   ),
                    //   ],),
                    // ),
                      ),

              // button QRcode
              GestureDetector(
                onTap: () {
                print("click");
                },
                 child:ButtonContainer(
                  marginHorizontal: _width * 0.02,marginVertical: 0,
                  altura: tamanhocontainer,largura: tamanhocontainer,text:  Flexible(child: Padding(
                   padding:  EdgeInsets.all(_width * 0.02),
                   child: Text("Ler QR",style: TextStyle(fontSize: _width * 0.035, fontFamily: "Montserrat", color: Color.fromARGB(255, 3, 0, 0)),),
                 )), color: Color.fromRGBO(224, 232, 248, 1),)
                      ),
                      GestureDetector(
                onTap: () {
                print("click");
                },
                child:ButtonContainer(altura: tamanhocontainer, largura: tamanhocontainer, 
                color: Color.fromRGBO(224, 232, 248, 1),
                text: Text(""), marginHorizontal: _width * 0.0, marginVertical: _width * 0.02)
                      ),
                ],
              ),
            ),
            SizedBox(height: _height * 0.02),
            Flexible(child: Text("Praticidade", style: TextStyle(fontSize: _width * 0.04, fontFamily: "Montserrat"),)),
      
            GestureDetector(
              onTap: (){},
              child: Container(
              width: _width * 0.95,
              height: _width * 0.19,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(224, 232, 248, 1)),
              child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
          child: 
          // Row --------------------------------------------------------------
          Row(
            
            children: [
            // Caixa Azul Para marcar presença
            Container(
              // Tamanho do quadrado com Icone do Calendario
              width: _width * 0.15,
              height: _width * 0.15,
              // ------------------------------------------
              margin: EdgeInsets.only(right: _width * 0.02),
              padding: EdgeInsets.symmetric(horizontal: _width * 0.02),
              decoration: BoxDecoration(gradient: LinearGradient( begin:Alignment(-1, -0.012),
              end:Alignment(1, 0.482),colors: [
              Color.fromRGBO(42, 113, 205, 1),
              Color.fromRGBO(103, 116, 231, 1)
              ],  ),borderRadius: BorderRadius.circular(12)),
          ),
        
          // Column ----------------------------------------------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Text("Calendário de eventos", style: TextStyle(fontSize: _width *0.039),)),
              Flexible(child: Text("Confira todos seus compromissos marcados." ,style: TextStyle(fontSize: _width * 0.03),))
            ],),
            Spacer(),
              Icon(Icons.chevron_right,size: _width * 0.08 ,)
            // Image.asset("assets/images/seta.png")
          ],),
              ),
              ),
          ),
          ],
              ),
        ),),
    );
  }
} 