class Product {
  final int id;
  final String name;
  final String category;
  final String image;
  final double price;
  final String period;
  final String condition;
  final String lenderName;
  final String lenderContact;
  int quantity;

  Product({required this.id, required this.name, required this.image, required this.price, required this.period, required this.condition, required this.lenderName, required this.lenderContact, this.quantity = 0});
}