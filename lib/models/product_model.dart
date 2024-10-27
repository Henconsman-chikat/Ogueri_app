class Product {
  final String id;
  final String name;
  final String description;
  final double price;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price});

  // Add a method to convert Product object to JSON and vice versa
}
