import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';

class CoverFlowScreen extends StatelessWidget {
  const CoverFlowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: double.infinity,
      child: Carousel(
        indicatorBgPadding: 5.0,
        dotPosition: DotPosition.bottomCenter,
        showIndicator: true,
        dotIncreaseSize: 2,
        dotSpacing: 20,
        dotColor: Colors.white,
        dotBgColor: Colors.black.withOpacity(0.2),
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotIncreasedColor: Colors.purple,
        boxFit: BoxFit.cover,
        images: [
          Image.asset('assets/images/logo.jpg'),
          Image.asset('assets/images/logo.jpg'),
          Image.asset('assets/images/logo.jpg'),
        ],
      ),
    );
  }
}
