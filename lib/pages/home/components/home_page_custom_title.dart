import 'package:flutter/material.dart';

class HomePageCustomTitle extends StatelessWidget {
  const HomePageCustomTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Hello,  ',
            style: TextStyle(
              fontSize: 34,
            ),
          ),
          TextSpan(
            text: 'John',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
