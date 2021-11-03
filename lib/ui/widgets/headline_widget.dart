import 'package:flutter/material.dart';
import '../screens/home/see_all_screen.dart';

class HeadlineWidget extends StatelessWidget {
  final String title;
  const HeadlineWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SeeAllScreeen()));
            },
            child: Text(
              'See All',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
            ),
          ),
        ],
      ),
    );
  }
}
