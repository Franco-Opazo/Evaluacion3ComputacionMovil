import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class BusquedaScreen extends StatelessWidget {
  const BusquedaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarName(name: 'Búsqueda'),
      body: Column(
        children: [
          NavBar(),
          BusquedaForm()
        ]
      ),
    );
  }
}
