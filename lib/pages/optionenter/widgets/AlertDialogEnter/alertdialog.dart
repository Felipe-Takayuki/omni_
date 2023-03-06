import"package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:omni_organizado/Routes/routes.dart';

class AlertDialogInicio extends StatefulWidget {
  const AlertDialogInicio({super.key});

  @override
  State<AlertDialogInicio> createState() => _AlertDialogInicioState();
}

class _AlertDialogInicioState extends State<AlertDialogInicio> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    var grupoide = AutoSizeGroup();
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: BoxDecoration(   color: Color.fromRGBO(39, 127, 242, 1),borderRadius: BorderRadius.circular(30)),
       
      child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          SizedBox(height: _height * 0.04,),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: _width * 0.02  ),
           child: Text("Nenhuma conta  foi\nidentificada neste aparelho. ", style: TextStyle(fontSize: _width * 1/20,fontWeight: FontWeight.w600, color: Colors.white, fontFamily: "Montserrat-semibold ",),maxLines: 4, ),
         ),      
           const Spacer(flex:3,),    
            Flexible(
              child: TextButton(onPressed: (){
                  Get.toNamed(Routes.Login);
              }, 
              child: Text("Já possuo conta!", style: TextStyle(fontSize: _width * 1/26,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold")),),
            ),
             SizedBox(height: _height * 0.02),
            Flexible(
              child: TextButton(onPressed: (){
               Get.toNamed(Routes.Cadastro);
              }, 
              child:Text("Ainda não possuo conta.", style: TextStyle(fontSize: _width * 1/26,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold"),)),
            ),
             SizedBox(height: _height * 0.02),
          ],
        ) ,
      ),
    );
  }
}
// Color.fromRGBO(39, 127, 242, 1),
//borderRadius: BorderRadius.circular(30)
 //AutoSizeText("Ainda não possuo conta.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold"),minFontSize: 4,stepGranularity: 1,maxLines: 1,maxFontSize: 14,)