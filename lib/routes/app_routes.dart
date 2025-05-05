import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'registro';
  static Map<String, Widget Function(BuildContext)> routes = {
    'registro': (BuildContext context) => const RegistroScreen(),
    'login': (BuildContext context) => const LoginScreen(),
    'lista_productos': (BuildContext context) => const ListaProductosScreen(),
    'carro': (BuildContext context) => const CarroScreen(),
    'busqueda': (BuildContext context) => const BusquedaScreen(),
    'detalle_producto': (BuildContext context) => const DetalleProductoScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
