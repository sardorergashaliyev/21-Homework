import 'package:flutter/material.dart';
import 'package:homework/apple.dart';
import 'package:homework/fake_page.dart';
import 'package:homework/sign.dart';
import 'package:homework/support.dart';

import 'google.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController firstName = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isNameEmpty = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 27,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 0.03),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffDDDDDD),
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 82,
                  ),
                  const SizedBox(
                    height: 33,
                    width: 108,
                    child: Image(
                      image: AssetImage('assets/Vector.png'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 37),
              const Text(
                'Register',
                style: TextStyle(
                    color: Color(0xffF2F2F2),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'If You Need Any Support ',
                        style: TextStyle(
                            color: Color(0xffE1E1E1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (_) => const MySupport(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text(
                      'Click Here',
                      style: TextStyle(
                          color: Color(0xff38B432),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TextFormField(
                  onChanged: ((value) {
                    isNameEmpty = false;
                    setState(() {});
                  }),
                  controller: firstName,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 28, bottom: 30, left: 26),
                    hintText: 'Full Name',
                    hintStyle:
                        const TextStyle(color: Color(0xffA7A7A7), fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xffA7A7A7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffA7A7A7),
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(),
                  ),
                ),
              ),
              isNameEmpty
                  ? const Text(
                      "You must write your full name",
                      style: TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TextFormField(
                  controller: email,
                  onChanged: (value) {
                    isEmailEmpty = false;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 28, bottom: 30, left: 26),
                    hintText: 'Enter Email',
                    hintStyle:
                        const TextStyle(color: Color(0xffA7A7A7), fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xffA7A7A7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffA7A7A7),
                      ),
                    ),
                  ),
                ),
              ),
              isEmailEmpty
                  ? const Text(
                      "You must write your email address",
                      style: TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TextFormField(
                  controller: password,
                  onChanged: (value) {
                    isPasswordEmpty = false;
                    if (visibility == false) {}
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 28, bottom: 30, left: 26),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          visibility = !visibility;
                          setState(() {});
                        },
                        child: Icon(
                          !visibility ? Icons.visibility_off : Icons.visibility,
                          color: const Color(0xffA7A7A7),
                        ),
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle:
                        const TextStyle(color: Color(0xffA7A7A7), fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xffA7A7A7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffA7A7A7),
                      ),
                    ),
                  ),
                ),
              ),
              isPasswordEmpty
                  ? const Text(
                      "You must write your password",
                      style: TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: GestureDetector(
                  onTap: () {
                    if (firstName.text.isNotEmpty &&
                        email.text.isNotEmpty &&
                        password.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return MyFakePage(
                              name: firstName.text,
                              email: email.text,
                            );
                          },
                        ),
                      );
                    } else if (email.text.isNotEmpty &&
                        password.text.isNotEmpty) {
                      isEmailEmpty = false;
                      isPasswordEmpty = false;
                      isNameEmpty = true;
                    } else if (firstName.text.isNotEmpty &&
                        email.text.isNotEmpty) {
                      isEmailEmpty = false;
                      isNameEmpty = false;
                      isPasswordEmpty = true;
                    } else if (firstName.text.isNotEmpty &&
                        password.text.isNotEmpty) {
                      isEmailEmpty = false;
                      isPasswordEmpty = false;
                      isEmailEmpty = true;
                    } else if (firstName.text.isNotEmpty) {
                      isNameEmpty = false;
                      isEmailEmpty = true;
                      isPasswordEmpty = true;
                    } else if (email.text.isNotEmpty) {
                      isNameEmpty = true;
                      isEmailEmpty = false;
                      isPasswordEmpty = true;
                    } else if (password.text.isNotEmpty) {
                      isNameEmpty = true;
                      isEmailEmpty = true;
                      isPasswordEmpty = false;
                    } else {
                      isEmailEmpty = true;
                      isNameEmpty = true;
                      isPasswordEmpty = true;
                      setState(() {});
                    }
                    setState(() {});
                  },
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Color(0xff42C83C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 29),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff383838),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 11),
                      child: const Text(
                        'Or',
                        style:
                            TextStyle(color: Color(0xff383838), fontSize: 12),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff383838),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 41),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 137),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MyGooglePage(),
                          ),
                        );
                        setState(() {});
                      },
                      child: const SizedBox(
                        height: 28,
                        width: 28,
                        child: Image(
                          image: AssetImage('assets/google.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                      width: 29,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (_) => MyApplePage(),
                            ),
                          );
                          setState(() {});
                        },
                        child: const Image(
                          image: AssetImage('assets/apple.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Do You Have An Account? ',
                          style: TextStyle(
                            color: Color(0xffE1E1E1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (_) => const MySign(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xff288CE9),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
