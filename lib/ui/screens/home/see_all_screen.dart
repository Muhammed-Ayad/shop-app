import 'package:flutter/material.dart';

import 'category_screen.dart';

class SeeAllScreeen extends StatelessWidget {
  const SeeAllScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.shopping_cart_sharp),
            ),
          ),
        ],
      ),
      body: CategoryScreen(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        height: double.infinity,
      ),
    );
  }
}
