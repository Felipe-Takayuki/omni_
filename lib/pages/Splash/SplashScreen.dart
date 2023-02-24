import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:omni_organizado/Routes/routes.dart';
import 'Splashscreen/splsh.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navegate();
    super.initState();
  }

  // / naegação ao inicar a tela
  navegate() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.toNamed(Routes.Inicio));
  }
  Widget build(BuildContext context) {
    return const Scaffold(body:  Splash());
  }
}