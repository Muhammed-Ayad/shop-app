import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_model.dart';

final productProvider =
    StateNotifierProvider<ProductPro, List<ProductModel>>((ref) {
  return ProductPro();
});

class ProductPro extends StateNotifier<List<ProductModel>> {
  ProductPro() : super([]);
  List<ProductModel> productItem = [
    ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '5.6',
      sale: '30 %',
    ),
    ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '9.6',
      sale: '40 %',
    ),
    ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '2.6',
      sale: '50 %',
    ),
    ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '1.6',
      sale: '60 %',
    ),
    ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '6.6',
      sale: '70 %',
    ),
      ProductModel(
      image: 'assets/images/product.png',
      title: 'Rice',
      price: '6.6',
      sale: '70 %',
    ),
  ];
}
