import 'package:accounting_desk/controllers/global_controller.dart';
import 'package:accounting_desk/ui/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  Get.put(GlobalController());
  runApp(GetMaterialApp(
    title: 'Accounting Desk',
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    theme: themeData,
  ));
}
