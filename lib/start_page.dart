import 'package:flutter/material.dart';
import 'package:homework/page.dart';

class MyStartPage extends StatelessWidget {
  const MyStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1B1B),
      body: Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              height: 350,
              width: 250,
              child: const Image(
                image: AssetImage('assets/Vector.png'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyPage()));
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xff42C83C),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: const Center(
                    child: Text(
                  'Start',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xffE3E3E3),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
