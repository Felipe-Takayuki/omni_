import"package:flutter/material.dart";
// tela foi dividida pelo motivo de uso individual em outras telas.
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Flexible(flex: 1,child: Image(image: AssetImage("assets/images/Logo/logotitle.png"))),
          Spacer(flex: 3),
          Flexible(flex: 2,child: Image(image: AssetImage("assets/images/Logo/ponto-de-verificacao.png",),)),
          Spacer(flex:  3,),
          Flexible(child: Text('Parcerias:',style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400, ),)),
          Flexible(flex: 1, child: Image(image: AssetImage("assets/images/Logo/logo.png",),)),
        ],
      ),);
  }
}