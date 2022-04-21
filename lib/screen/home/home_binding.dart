import 'package:firebase_carousel_example/controller/carousel_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CarouselController());
  }
}