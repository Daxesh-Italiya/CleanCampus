import 'package:get/get.dart';

import '../controllers/add_complain_screen_controller.dart';

class AddComplainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddComplainScreenController>(
      () => AddComplainScreenController(),
    );
  }
}
