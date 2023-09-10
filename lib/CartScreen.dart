import 'package:flutter/material.dart';
import 'package:fruitapp/main.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final item = cart.items[index];
          return ListTile(
            title: Text(item.productName),
            subtitle:
                Text('Cantidad: ${item.quantity} x Precio: \$${item.price}'),
          );
        },
      ),
    );
  }
}
