import 'package:flutter/material.dart';
import 'signup_screen.dart';
import '../home/home_screen.dart';
import '../../widgets/button_auth.dart';
import '../../widgets/rich_text_widget.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                'Log In',
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
                        decoration: const InputDecoration(hintText: 'Email '),
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
                      ButtonAuth(
                        title: 'Log In',
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
                              builder: (context) => const SignUpScreen()));
                        },
                        title: 'I dont have an account ?',
                        titleButton: '  Create',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
