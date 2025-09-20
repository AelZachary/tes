enum Category {
  all,
  electronics,
  fashion,
  home,
  beauty,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  final Category category;
  final int id;
  final String name;
  final int price; // dalam rupiah
  final String imageUrl;

  String get priceLabel => "Rp ${price.toString()}";
}
