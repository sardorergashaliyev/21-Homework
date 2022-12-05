import 'dart:math';

import 'package:flutter/material.dart';

class MyFakePage extends StatelessWidget {
  final String name;
  final String email;

  var index = Random().nextInt(6);

  List img = [
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://images.genius.com/578e20b49d1233d2520b4f2eefc0d2e1.1000x1000x1.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://images.genius.com/4341bbdfc986f1ba7a44bda3409018f6.1000x1000x1.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://i.ytimg.com/vi/B4wNcK_syH4/maxresdefault.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://avatars.yandex.net/get-music-content/5966316/c0b14f63.a.23134378-1/200x200')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://i1.sndcdn.com/artworks-000524840307-6q4cb9-t500x500.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://images.genius.com/e655fdd9d319365973b5bdbd979becd6.1000x1000x1.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://sound-fun.online/uploads/posts/2022-07/62cf12af4e5be.jpg')),
    const Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://avatars.yandex.net/get-music-content/4382102/38a2c5fc.a.17788287-1/m1000x1000')),
  ];

  List<String> names = [
    'Billie Eilish, Khalid',
    'MiyaGi & Endspiel',
    'Rauf & Faik',
    'Xcho',
    'Billie Eilish',
    'MiyaGi',
    'Xcho',
    'Santiz',
  ];

  List<String> titles = [
    'Lovely',
    'Ночь',
    'Вечера',
    'Нарекай',
    'Six Feet Under',
    'Captain',
    'Про Любовь',
    '52 Герца',
  ];

  List<Color> colores = [
    Colors.black,
    Colors.brown,
    Colors.purple,
    Colors.pink,
    Colors.blueGrey,
    const Color.fromARGB(255, 170, 156, 34)
  ];

  MyFakePage({required this.name, required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1B1B),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 318,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff2C2B2B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 255, 255, 0.04),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                              color: Color(0xffDDDDDD),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 97,
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(
                              color: Color(0xffE6E6E6),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none),
                        ),
                        const SizedBox(width: 106),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 93,
                    width: 93,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: colores[index]),
                    child: Center(
                      child: Text(
                        name[0],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 34),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    child: Text(
                      email,
                      style: const TextStyle(
                          color: Color(0xffD8D4D4),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              '778',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 98,
                        ),
                        Column(
                          children: const [
                            Text(
                              '40',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Followes',
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Text(
                    'Public playlists'.toUpperCase(),
                    style: const TextStyle(
                        color: Color(0xffD6D6D6),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(left: 29),
                      height: 60,
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 11),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          height: 56,
                          width: 58,
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                              child: img[index]),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              titles[index],
                              style: const TextStyle(
                                  color: Color(0xffE3E3E3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              names[index],
                              style: const TextStyle(
                                  color: Color(0xffE3E3E3),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 37),
                          child: const Text(
                            '5:33',
                            style: TextStyle(
                                color: Color(0xffE3E3E3),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 35),
                          child: const Icon(
                            Icons.more_horiz,
                            color: Color(0xffE4E4E4),
                          ),
                        )
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
