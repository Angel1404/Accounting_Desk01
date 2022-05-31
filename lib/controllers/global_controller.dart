import 'package:accounting_desk/routes/app_pages.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  static GlobalController get to => Get.find<GlobalController>();
  final route = Routes.MISPRODUCTOS.obs;
  final itemSeleccionado = 0.obs;
}
