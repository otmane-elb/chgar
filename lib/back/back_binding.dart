import 'package:get/get.dart';
import 'package:getxbindings/back/back_controller.dart';

class BackBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BackController>(() => BackController());
  }
}
