import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String titleButton;
  const RichTextWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.titleButton,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: title,
            style: const TextStyle(color: Colors.grey,fontSize: 17),
          ),
          const TextSpan(),
          TextSpan(
              text:titleButton,
              style:  const TextStyle(color: Colors.blue,fontSize: 17),
              recognizer: TapGestureRecognizer()..onTap = () => onPressed(),),
        ]),
      ),
    );
  }
}
