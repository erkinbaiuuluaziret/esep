import 'package:esep/presentation/Add_new_worker.dart';
import 'package:esep/presentation/now_search_result.dart';
import 'package:esep/presentation/search,result.dart';
import 'package:esep/presentation/search.dart';
import 'package:get/get.dart';

import '../../presentation/About_us.dart';
import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NOWSEARCHRESULT;

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
      name: _Paths.ADDNEWWORKER,
      page: () => AddNewWorker(),
    ),
      GetPage(
      name: _Paths.ABOUTUS,
      page: () => UiScreen(),
    ),
          GetPage(
      name: _Paths.SEARCH,
      page: () => SearchScreen(),
    ),
              GetPage(
      name: _Paths.SEARCHRESULT,
      page: () => SearchResult(),
    ),
                  GetPage(
      name: _Paths.NOWSEARCHRESULT,
      page: () => NowSearchResult(),
    ),
  ];
}
