import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category_model.dart';

final categoryProvider =
    StateNotifierProvider<CategoryPro, List<CategoryModel>>((ref) {
  return CategoryPro();
});

class CategoryPro extends StateNotifier<List<CategoryModel>> {
  CategoryPro() : super([]);
  List<CategoryModel> categoryItem = [
    CategoryModel(
      image: 'assets/images/rice.png',
      title: 'Rice',
    ),
    CategoryModel(
      image: 'assets/images/meats.png',
      title: 'Meats',
    ),
    CategoryModel(
      image: 'assets/images/milk.png',
      title: 'Milks',
    ),
    CategoryModel(
      image: 'assets/images/cleaner.png',
      title: 'Cleaner',
    ),
  ];
}
