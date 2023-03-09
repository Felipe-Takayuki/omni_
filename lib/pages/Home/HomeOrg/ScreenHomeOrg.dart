import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../Routes/routes.dart';

class HomeOrg extends StatefulWidget {
  const HomeOrg({super.key});
  
  @override
  State<HomeOrg> createState() => _HomeOrgState();
}

class _HomeOrgState extends State<HomeOrg> {

 
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.only(top: _height * 0.1),
        width: _width * 0.98,
        height: _height* 0.98,
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text("Seja bem vinda(o)\nnovamente", style: TextStyle(fontSize: _width * 10/100, fontFamily: "Montserrat-semibold", color: Color.fromRGBO(171, 171, 171, 1)),),
            Text("UNIVEM!", style: TextStyle(fontSize: _width * 15/100, fontFamily: "Montserrat"),), 
              
            Center(
              child: TextButton(onPressed: (){}
              , child: Container(
                height: _height * 8/100,
                width: _width * 90/100,
              margin: EdgeInsets.only(
                top: _height * 0.05,
                bottom: _height * 0.05),decoration: BoxDecoration(gradient: LinearGradient(  begin: Alignment(-0.768, -2.161),
            end: Alignment(0.637, 2.066),
            colors:[Color(0xff2880f3), Color(0xff60cefe)],
            ),borderRadius:BorderRadius.circular(25) ),child: Center(child: Text("Criar um novo evento", style: TextStyle(fontSize: _width *5/100 ,color: Colors.white),)),)),
            ),
            
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Eventos",style: TextStyle(fontSize: _width * 8/100, fontFamily: "Montserrat", color: Color.fromRGBO(118, 118, 118, 1)))),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.start,children: [IconButton(onPressed: (){
              setState(() {
             
              });
            }, icon:Image.asset("assets/images/chevron-baixo 1(1).png")
          ), 
            SizedBox(width: 4,),Text("Eventos mais próximos", style: TextStyle(fontSize: _width * 6/100, color: Color.fromRGBO(118, 118, 118, 1)),)],),
            
           SingleChildScrollView(
              child: Padding(
              padding: EdgeInsets.only(left: _width * 1/100, top: 20, right:  _width * 1/100),
              child: ColunaYN(),
              ),
            )
          
              
          ],
              ),
        ),)),
      //bottomNavigationBar: MENUEMPRESA(),
    );
  }
}
//Image.asset("assets/images/chevron-baixo 1.png")
//Text("Eventos mais próximos", style: TextStyle(fontSize: 16, color: Color.fromRGBO(118, 118, 118, 1)),)
 class ColunaYN extends StatefulWidget {
  const ColunaYN({super.key});

  @override
  State<ColunaYN> createState() => _ColunaYNState();
}

class _ColunaYNState extends State<ColunaYN> {
  
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height =  MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(height:_height * 1/8, width: _width * 0.9,child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Em 10 de Dezembro", style: TextStyle(fontSize:  _width * 6/100, fontFamily: "Montserrat", color: Color.fromRGBO(118,118,118,1)),)),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.3 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(onTap: (){
                      Get.toNamed(Routes.DetailsEventOrg);
                    },child: Text(" - DevMenthors", style: TextStyle(fontSize: _width * 6/100, fontFamily: "Montserrat-Regular"),)),
                    Text(' - Reunião', style: TextStyle(fontSize: _width * 6/100, fontFamily: "Montserrat-Regular")),
                  ],
                ),
              )
            ],
          )),
       Container(height:_height * 1/8, width: _width * 0.9,child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Em 12 de Dezembro",style: TextStyle(fontSize:  _width * 6/100, fontFamily: "Montserrat", color: Color.fromRGBO(118,118,118,1)))),
              Padding(
                padding:  EdgeInsets.only(left: _width * 0.3 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("- Palestra", style: TextStyle(fontSize: _width * 6/100, fontFamily: "Montserrat-Regular")),
                    Text('- Congresso', style: TextStyle(fontSize: _width * 6/100, fontFamily: "Montserrat-Regular")),
                  ],
                ),
              )
            ],
          )),
           Container(height:_height * 1/8, width: _width * 0.9,child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Em 15 de Dezembro", style: TextStyle(fontSize: _width * 6/100 , fontFamily: "Montserrat", color: Color.fromRGBO(118,118,118,1)))),
              Padding(
                padding:  EdgeInsets.only(left: _width * 0.3 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("- Exposição", style: TextStyle(fontSize: _width * 6/100, fontFamily: "Montserrat-Regular")),
                   
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
class Vazio extends StatelessWidget {
  const Vazio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
} 