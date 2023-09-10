class User {
  final String name;
  final String email;
  final List<String> purchaseHistory;
  final List<String> favoriteProducts;

  User({
    required this.name,
    required this.email,
    required this.purchaseHistory,
    required this.favoriteProducts,
  });
}

User currentUser = User(
  name: 'Jose Israel Colesio',
  email: 'JEFE@ejemplo.com',
  purchaseHistory: ['Compra A2', 'Compra A3'],
  favoriteProducts: ['Producto A1', 'Producto A2'],
);

