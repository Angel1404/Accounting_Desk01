import 'package:accounting_desk/routes/app_pages.dart';
import 'package:flutter/material.dart';

class MenuModels {
  MenuModels({required this.icon, required this.title, required this.route});
  final String title;
  final IconData icon;
  final String route;
}

List<MenuModels> listManu = [
  MenuModels(icon: Icons.person_outline_rounded, title: 'Mi perfil', route: Routes.MYPERFIL),
  MenuModels(icon: Icons.list, title: 'Mis productos', route: Routes.MISPRODUCTOS),
  MenuModels(
      icon: Icons.description_outlined,
      title: 'Productos faltantes',
      route: Routes.PRODUCTOSFALTANTES),
];
