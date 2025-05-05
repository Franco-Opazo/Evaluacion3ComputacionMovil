import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/services.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';
import '../providers/providers.dart';

class ListaProductos extends StatelessWidget {
  const ListaProductos({super.key});
  @override
  Widget build(BuildContext context) {

    final productService = Provider.of<ProductService>(context);

    if (productService.isLoading) return LoadingScreen();

    return ListView(
      children: [
        NavBar(),
        ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: productService.products.length,
          itemBuilder: (BuildContext context, index) {
            final product = productService.products[index];
            return Container(
              color: Colors.grey,
              padding: EdgeInsets.all(32),
              height: 350,
              child: Center(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image(image: NetworkImage(product.productImage), width: double.infinity, height: double.infinity, fit: BoxFit.cover)
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.red,
                        width: 200,
                        child: Text(product.productName, style: TextStyle(fontSize: 24))
                      )
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: IconButton(
                          onPressed: () => Navigator.pushNamed(context, 'detalle_producto', arguments: product.productName),
                          icon: Icon(Icons.more)
                        )
                      )
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        color: Colors.red,
                        child: Text('\$${product.productPrice}', style: TextStyle(fontSize: 24))
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: Colors.red,
                        child: IconButton(
                          onPressed: () { Provider.of<CartProvider>(context, listen: false).addProduct(product); },
                          icon: Icon(Icons.add_shopping_cart)
                        ),
                      ),
                    )
                  ],
                ),
              )
            );
          },
        ),
      ],
    );
  }
}