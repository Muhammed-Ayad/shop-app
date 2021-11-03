import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../blocs/providers/product_pro.dart';


import 'detail_screen.dart';

class BestOffersScreen extends ConsumerWidget {
  const BestOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final product = watch(productProvider.notifier);
    return SizedBox(
      height: 560,
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 200,
          ),
          itemCount: product.productItem.length,
          itemBuilder: (context, i) {
            return BestOffersItem(
              image: product.productItem[i].image,
              title: product.productItem[i].title,
              price: product.productItem[i].price,
              sale: product.productItem[i].sale,
            );
          }),
    );
  }
}

class BestOffersItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String sale;

  const BestOffersItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.sale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: Container(
        height: 280,
            width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: 100,
                      child: Image.asset(image),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.favorite),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "  \$$price",
                    style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      sale,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add Cart'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
