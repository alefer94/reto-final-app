import 'package:app_delivery_restaurant/app/ui/views/detail/detail_controller.dart';
import 'package:get/get.dart';

class DetalleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetalleController());
  }
}
