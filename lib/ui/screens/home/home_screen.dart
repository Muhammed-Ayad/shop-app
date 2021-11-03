import 'package:flutter/material.dart';

import '../../widgets/headline_widget.dart';
import 'best_offers_screen.dart';
import 'cart_screen.dart';
import 'category_screen.dart';
import 'cover_flow_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F6FB),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text(
                    'Wellcome',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()));
                      },
                      icon: const Icon(
                        Icons.shopping_cart_sharp,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.search_rounded),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const HeadlineWidget(title: 'Categories'),
            CategoryScreen(
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              height: 140,
            ),
            const CoverFlowScreen(),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Best offers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const BestOffersScreen()
          ],
        ),
      ),
    );
  }
}
