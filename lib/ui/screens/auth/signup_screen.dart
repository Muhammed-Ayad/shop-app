import 'package:flutter/material.dart';
import '../home/home_screen.dart';
import '../../widgets/button_auth.dart';
import '../../widgets/rich_text_widget.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
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
                  'Create a new account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Form(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                         TextFormField(
                          decoration: const InputDecoration(hintText: 'Your Name '),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         TextFormField(
                          decoration: const InputDecoration(hintText: 'Email '),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         TextFormField(
                          decoration: const InputDecoration(hintText: 'Phone Number '),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Password ',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(hintText: 'Address '),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        
                        ButtonAuth(
                          title: 'Sign Up',
                          colorText: Colors.white,
                          colorButton: Colors.blue,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        RichTextWidget(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  LogInScreen()));
                          },
                          title: 'you have an account ?',
                          titleButton: ' Register now',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
