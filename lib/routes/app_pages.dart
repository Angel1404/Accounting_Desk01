import 'package:get/get.dart';
import 'package:accounting_desk/ui/ui_routes.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.MISPRODUCTOS,
      page: () => const MisProductosPage(),
    ),
    GetPage(
      name: Routes.PRODUCTOSFALTANTES,
      page: () => const ProductosFaltantesPage(),
    ),
  ];
}
