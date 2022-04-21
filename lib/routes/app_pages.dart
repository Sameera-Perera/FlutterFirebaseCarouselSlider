import 'package:firebase_carousel_example/screen/home/home_binding.dart';
import 'package:firebase_carousel_example/screen/home/home_screen.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.home,
      binding: HomeBinding(),
      page: () => const HomeScreen(),
    ),
  ];
}
