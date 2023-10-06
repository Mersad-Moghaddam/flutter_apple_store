class Product {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final Map<String, dynamic> rating;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory Product.fromJson(Map<String, dynamic> jsonData) {
    return Product(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        rating: jsonData['jsonData']);
  }
}
