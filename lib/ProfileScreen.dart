import 'package:flutter/material.dart';
import 'package:fruitapp/EditProfileScreen.dart';
import 'package:fruitapp/user.dart';

class ProfileScreen extends StatelessWidget {
  final User user; // Pasa el usuario actual a esta pantalla

  ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text('Nombre: ${user.name}'),
          ),
          ListTile(
            title: Text('Correo Electrónico: ${user.email}'),
          ),
          ListTile(
            title: Text(
                'Historial de Compras: ${user.purchaseHistory.join(", ")}'),
          ),
          ListTile(
            title: Text(
                'Productos Favoritos: ${user.favoriteProducts.join(", ")}'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navegar a la pantalla de actualización de perfil
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
            },
            child: Text('Editar Perfil'),
          ),
        ],
      ),
    );
  }
}
