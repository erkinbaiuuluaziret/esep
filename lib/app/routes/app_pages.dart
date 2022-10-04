import 'package:esep/app/modules/authentication/views/authorize_view.dart';
import 'package:esep/app/modules/authentication/views/verification_view.dart';
import 'package:esep/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTHORIZE;
  // static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
    ),
    GetPage(
      name: _Paths.AUTHORIZE,
      page: () => const AuthorizeView(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainScreen(),
    ),
  ];
}
