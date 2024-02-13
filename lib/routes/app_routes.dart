import 'package:testvalley/presentation/home_container_screen/home_container_screen.dart';
import 'package:testvalley/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:testvalley/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:testvalley/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    )
  ];
}
