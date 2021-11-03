class ProductModel {
  final String? id;
  final String? isFavorets;
  final String image;
  final String title;
  final String price;
  final String sale;
  ProductModel({
    this.id,
    this.isFavorets,
    required this.image,
    required this.title,
    required this.price,
    required this.sale,
  });
}
