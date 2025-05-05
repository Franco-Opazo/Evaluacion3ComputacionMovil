import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconText(icon: Icons.create, iconName: 'Registro', route: 'registro',),
          IconText(icon: Icons.login, iconName: 'Login', route: 'login'),
          IconText(icon: Icons.search, iconName: 'Búsqueda', route: 'busqueda'),
          IconText(icon: Icons.list, iconName: 'Lista de Productos', route: 'lista_productos'),
        ],
      ),
    );
  }
}