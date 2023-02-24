import 'package:get/route_manager.dart';
import 'routes.dart';
import 'package:omni_organizado/pages/Splash/SplashScreen.dart';
import 'package:omni_organizado/pages/optionenter/optionsenter.dart';
import 'package:omni_organizado/pages/Cadastro/OptionCadastro/optionCadastro.dart';
import 'package:omni_organizado/pages/Cadastro/CadastroOrg/cadastroorg.dart';
import 'package:omni_organizado/pages/login/OptionLogin/optionLogin.dart';
import 'package:omni_organizado/pages/Home/HomeUser/ScreenHomeUser.dart';
class Pages{
  static final routes = [
    GetPage(name: Routes.Splash, page: () => SplashScreen()),
    GetPage(name: Routes.Inicio, page: () => OptionsEnter()),
    GetPage(name: Routes.Login, page: () => OptionsLogin()),
    GetPage(name: Routes.Cadastro, page: () =>OptionsCadastro(),),
    GetPage(name: Routes.CadastroOrg, page: () => CadastroOrg(),),
    GetPage(name: Routes.HomeUser, page: () =>HomeUser() ),
    GetPage(name: Routes.HomeOrg, page:() => null!)
  ];
}