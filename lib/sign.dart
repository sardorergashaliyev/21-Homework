import 'package:flutter/material.dart';

class MySign extends StatelessWidget {
  const MySign({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Sign Page',
      style: TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xffE3E3E3),
          fontSize: 16),
    ));
  }
}
