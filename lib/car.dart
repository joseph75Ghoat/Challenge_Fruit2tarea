class Cart {
  final List<CartItem> items = [];

  void addItem(String productName, double price) {
    try {

      final existingItem = items.firstWhere(
       (item) => item.productName == productName,
     );

      existingItem.quantity++;
    }catch (e) {
      items.add(CartItem(productName: productName, price: price));
    }
  }

}

class CartItem {
  final String productName;
  final double price;
  int quantity = 1;

  CartItem({required this.productName, required this.price});
}
