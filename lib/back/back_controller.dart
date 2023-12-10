import 'package:get/get.dart';

class BackController extends GetxController {
  final count = 0.obs;

  add() {
    count.value++;
  }
}
