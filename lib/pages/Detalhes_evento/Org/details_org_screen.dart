import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../Widgets_detalhes/container_btnediton.dart';

class DetailsEventScreenOrg extends StatefulWidget {
  const DetailsEventScreenOrg({super.key});

  @override
  State<DetailsEventScreenOrg> createState() => _DetailsEventScreenOrgState();
}

class _DetailsEventScreenOrgState extends State<DetailsEventScreenOrg> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        

        minHeight: _height * 0.3,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30) ),
        panel: Padding(
          padding:  EdgeInsets.symmetric(horizontal: _width * 1/40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            Container(
             
              child: Image.asset('assets/images/Icons/rectangle.png',  width: _height * 1/20,  ),margin: EdgeInsets.only(top: _height * 1/25, bottom: _height * 1/25), ),
              Text("DevMenthors", style: TextStyle(fontSize:  _width * 0.09, fontWeight: FontWeight.w900),),
              SizedBox(height:  _height * 1/30,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",textAlign: TextAlign.center),
              SizedBox(height:  _height * 1/30,),
              Align(alignment: Alignment.centerLeft,child: Text("Detalhes", style: TextStyle(fontSize: _width * 1/15, fontWeight: FontWeight.w700),),),
              ButtonEdition(buttonsize: _height * 1/10,altura:   _height * 1/10, largura: _width * 0.8, icon: Image.asset("assets/images/Icons/iconlocalization.png",), title: "Teste", description: "hjkahjkfhakjhkjsfhkjhfkj",editavel: true,space: _width * 0.02,titleFontSize: _width * 0.03, descriptionFontSize: _width * 0.05, textColor: Colors.white,func: (){
                print("teste");
              },),
               ButtonEdition(buttonsize: _height * 1/10,altura:   _height * 1/10, largura: _width * 0.8, icon: Image.asset("assets/images/Icons/iconlocalization.png",), title: "Teste", description: "hjkahjkfhakjhkjsfhkjhfkj",editavel: true,space: _width * 0.02,titleFontSize: _width * 0.03, descriptionFontSize: _width * 0.05, textColor: Colors.white,func: (){
                print("teste");
              },)
                        
            ],
          ),
        )
      ),
    );
  }
}