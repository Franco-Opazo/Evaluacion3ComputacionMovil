import 'package:flutter/material.dart';

class BusquedaForm extends StatelessWidget {
  const BusquedaForm({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController buscar = TextEditingController();
    return Expanded(
      child: Container(
        color: Colors.grey,
        child: Center(
          child: SizedBox(
            width: 380,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Buscar producto por nombre', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: buscar,
                          autocorrect: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Ingrese aquí el nombre del producto',
                            labelText: 'Producto',
                            prefixIcon: Icon(Icons.inventory)
                          ),
                          validator: (value) {
                            return (value != null && value.length >= 2)
                            ? null
                            : 'El nombre del producto no puede estar vacio';
                          }
                        ),
                        SizedBox(height: 30),
                        MaterialButton(
                          disabledColor: Colors.grey,
                          color: Colors.orange,
                          onPressed: () {
                            if (buscar.text.isNotEmpty){
                              Navigator.pushNamed(context, 'detalle_producto', arguments: buscar.text);
                            }
                          },
                          child: Text(
                            'Buscar', style: TextStyle(color: Colors.white),
                          )
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}