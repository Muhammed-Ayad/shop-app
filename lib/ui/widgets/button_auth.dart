import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  final String title;
  final Color colorText;
  final Color colorButton;
  final VoidCallback onPressed;
  const ButtonAuth({
    Key? key,
    required this.title,
    required this.colorText,
    required this.colorButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        elevation: 8,
        height: 50,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            fontSize: 20,
          ),
        ),
        color: colorButton,
        onPressed: onPressed,
      ),
    );
  }
}
