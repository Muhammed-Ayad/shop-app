import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../blocs/providers/category_pro.dart';


class CategoryScreen extends ConsumerWidget {
  final int crossAxisCount;
  final Axis scrollDirection;
  final double height;
  CategoryScreen({
    required this.crossAxisCount,
    required this.scrollDirection,
    required this.height,
  });
 


  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final category = watch(categoryProvider.notifier);
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 20, bottom: 25),
      child: SizedBox(
        height: height,
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: scrollDirection,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: category.categoryItem.length,
          itemBuilder: (context, i) {
            return CategoryItem(
              image: category.categoryItem[i].image,
              title: category.categoryItem[i].title,
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String title;
  const CategoryItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            FittedBox(
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
