import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'Routes/pages.dart';
import 'Routes/routes.dart';

void main(){
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    getPages: Pages.routes,
    initialRoute: Routes.Splash,
    debugShowCheckedModeBanner: false,
  );
  }
}