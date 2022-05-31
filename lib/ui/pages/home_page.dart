import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:accounting_desk/controllers/global_controller.dart';
import 'package:accounting_desk/data/models/models_routes.dart';
import 'package:accounting_desk/routes/app_pages.dart';
import 'package:accounting_desk/ui/ui_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Row(
          children: [
            const _MenuLateralHome(),
            Obx(
              () => cambiarVista(GlobalController.to.route.value),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuLateralHome extends StatelessWidget {
  const _MenuLateralHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.width * .18);
    return Obx(
      () => Container(
        height: Get.height,
        width: Get.width * .18,
        decoration: const BoxDecoration(
          color: Color(0xff2B2D41),
        ),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text('logotipo de la app'),
            ),
            Column(
              children: [
                SizedBox(height: Get.height * .1),
                ...List.generate(
                  listManu.length,
                  (i) {
                    final data = listManu[i];
                    return InkWell(
                      onTap: () {
                        GlobalController.to.route.value = data.route;
                        GlobalController.to.itemSeleccionado.value = i;
                      },
                      child: AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 400),
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            right: (GlobalController.to.itemSeleccionado.value == i) ? 20 : 40,
                            bottom: 10),
                        decoration: BoxDecoration(
                            color: (GlobalController.to.itemSeleccionado.value == i)
                                ? Colors.white.withOpacity(0.9)
                                : null,
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(50), topRight: Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(data.icon,
                                  color: (GlobalController.to.itemSeleccionado.value == i)
                                      ? const Color(0xff354157)
                                      : Colors.white),
                              const SizedBox(width: 10),
                              Text(
                                data.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: (GlobalController.to.itemSeleccionado.value == i)
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                height: Get.height * .12,
                width: double.infinity,
                child: Column(
                  children: [
                    const Divider(height: 0, color: Color(0xff354157)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(child: Icon(Icons.person)),
                          const SizedBox(width: 15),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Nombre cliente',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  'Rol',
                                  style:
                                      TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cambiarVista(String route) {
  switch (route) {
    case Routes.MYPERFIL:
      return const MyPerfilPage();
    case Routes.PRODUCTOSFALTANTES:
      return const ProductosFaltantesPage();
    default:
      return const MisProductosPage();
  }
}
