import 'package:flutter/material.dart';
import 'package:omni_organizado/pages/Splash/Splashscreen/splsh.dart';
import 'package:omni_organizado/pages/optionenter/widgets/AlertDialogEnter/alertdialog.dart';
class OptionsEnter extends StatefulWidget {
  const OptionsEnter({super.key});

  @override
  State<OptionsEnter> createState() => _OptionsEnterState();
}

class _OptionsEnterState extends State<OptionsEnter> {
   
  @override
  
  Widget build(BuildContext context) {
    var widthscreen = MediaQuery.of(context).size.width;
    var heightscreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      width:widthscreen,
      height:heightscreen,
      child: Stack(children: [
        Container(
          width:widthscreen,
          height: heightscreen,
          child: Splash()),
        Column(
          children: [
            Flexible(flex: 1,child: Container()),
            Flexible(child: Row(
              children: const [
                Spacer(flex: 1,),
                Flexible(flex:4,child: AlertDialogInicio()),
                Spacer(flex: 1,)
              ],
            )),
            Flexible(flex: 1,child: Container()),
          ],
        )
      ],),)
    );
  }
}