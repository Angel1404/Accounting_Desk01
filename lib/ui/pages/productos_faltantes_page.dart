import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductosFaltantesPage extends StatelessWidget {
  const ProductosFaltantesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width * .82,
      height: Get.height,
      color: Colors.white,
      child: const Text('Productos Faltantes'),
    );
  }
}
