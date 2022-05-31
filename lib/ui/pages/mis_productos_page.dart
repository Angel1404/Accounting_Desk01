import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MisProductosPage extends StatelessWidget {
  const MisProductosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .82,
      height: Get.height,
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text('Mis productos'),
    );
  }
}
