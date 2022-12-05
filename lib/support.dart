import 'package:flutter/material.dart';

class MySupport extends StatelessWidget {
  const MySupport({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Support Page',
        style: TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xffE3E3E3),
          fontSize: 16
        ),
      ),
    );
  }
}
