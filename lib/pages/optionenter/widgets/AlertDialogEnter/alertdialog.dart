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
    return Center(
      child: Container(
        decoration: BoxDecoration(   color: Color.fromRGBO(39, 127, 242, 1),borderRadius: BorderRadius.circular(30)),
       
      child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           const Spacer(flex: 1,),
            Flexible(flex:3,child: AutoSizeText(" Nenhuma conta  foi\n identificada neste aparelho. ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600, color: Colors.white, fontFamily: "Montserrat-semibold ",),maxLines: 4, minFontSize: 16,stepGranularity: 1,maxFontSize: 20,  )),      
           const Spacer(flex:3,),    
            Flexible(
              child: TextButton(onPressed: (){
                  Get.toNamed(Routes.Login);
              }, 
              child:  AutoSizeText("Já possuo conta!", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold"),group: grupoide,),),
            ),
             const Spacer(),
            Flexible(
              child: TextButton(onPressed: (){
               Get.toNamed(Routes.Cadastro);
              }, 
              child: FittedBox(fit: BoxFit.cover,child: AutoSizeText("Ainda não possuo conta.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold"),minFontSize: 8,stepGranularity: 1,maxLines: 1,maxFontSize: 16,group: grupoide,))),
            ),
             const Spacer()
          ],
        ) ,
      ),
    );
  }
}
// Color.fromRGBO(39, 127, 242, 1),
//borderRadius: BorderRadius.circular(30)
 //AutoSizeText("Ainda não possuo conta.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white, decoration: TextDecoration.underline, fontFamily: "Montserrat-semibold"),minFontSize: 4,stepGranularity: 1,maxLines: 1,maxFontSize: 14,)