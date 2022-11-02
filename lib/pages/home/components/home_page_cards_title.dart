import 'package:flutter/material.dart';

class HomePageCardsTitle extends StatelessWidget {
  final String leading;
  final String trailing;
  const HomePageCardsTitle({
    Key? key,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          trailing,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
