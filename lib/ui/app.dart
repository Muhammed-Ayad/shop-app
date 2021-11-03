import 'package:flutter/material.dart';


import '../themes/theme.dart';
import 'screens/tap_screen/tap_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TapScreen(),
      theme: themeData,
    );
  }
}
