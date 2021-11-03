import 'package:flutter/material.dart';
import 'signup_screen.dart';
import '../home/home_screen.dart';
import '../../widgets/button_auth.dart';

import 'login_screen.dart';

class HomeAuthScreen extends StatelessWidget {
  const HomeAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 130,
              child: Image.asset(
                'assets/images/logo.jpg',
              )),
          const Text(
            'Shop App',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Wellcome',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonAuth(
            title: 'Log In',
            colorText: Colors.white,
            colorButton: Colors.blue,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LogInScreen()));
            },
          ),
          ButtonAuth(
            title: 'Sign Up',
            colorText: Colors.blue,
            colorButton: Colors.grey.shade200,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUpScreen()));
            },
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Skip Now',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }
}
