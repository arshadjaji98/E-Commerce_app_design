import 'package:e_commerce_ui/pages/shop_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
  Color iconColor = Colors.white;
  Color containerColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/background.jpg',
                width: double.infinity,
                fit: BoxFit.fitWidth,
                height: 536,
              ),
              Positioned(
                bottom: 40,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Fashion\nsale',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w900,
                          height: 0.8,
                        ),
                        strutStyle: StrutStyle(height: 2),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 36,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red),
                        child: const Center(
                          child: Text(
                            'Check',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShopScreen()));
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You’ve never seen it before!',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 11,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/photo 2.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Stack(children: [
                      Image.asset('assets/photo 1.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 40,
                          height: 24,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              'New',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/photo 1.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/photo 1.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/photo 1.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/photo 1.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/background 2.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  height: 300,
                ),
                const Positioned(
                  bottom: 70,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Street clothes',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sale',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShopScreen()));
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Supper summer sale',
                style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontSize: 11,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Image.asset('assets/photo 3.png'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                                if (isFavorite) {
                                  iconColor = Colors.white;
                                  containerColor = Colors.black;
                                } else {
                                  iconColor = Colors.grey;
                                  containerColor = Colors.white;
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isFavorite ? Colors.red : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: iconColor,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Text(
                            '(10)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dorothy Perkins',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evening Dress',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "15\$",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12\$",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Image.asset('assets/photo 4.png'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                                if (isFavorite) {
                                  iconColor = Colors.white;
                                  containerColor = Colors.black;
                                } else {
                                  iconColor = Colors.grey;
                                  containerColor = Colors.white;
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isFavorite ? Colors.red : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: iconColor,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Text(
                            '(10)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sitlly',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sport Dress',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "22\$",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "19\$",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Image.asset('assets/photo 1.png'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                                if (isFavorite) {
                                  iconColor = Colors.white;
                                  containerColor = Colors.black;
                                } else {
                                  iconColor = Colors.grey;
                                  containerColor = Colors.white;
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isFavorite ? Colors.red : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: iconColor,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Text(
                            '(10)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dorothy Perkins',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sport Dress',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "14\$",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12\$",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Image.asset('assets/photo 2.png'),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                                if (isFavorite) {
                                  iconColor = Colors.white;
                                  containerColor = Colors.black;
                                } else {
                                  iconColor = Colors.grey;
                                  containerColor = Colors.white;
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isFavorite ? Colors.red : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: iconColor,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 15,
                          ),
                          Text(
                            '(10)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dorothy Perkins',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evening Dress',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "15\$",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12\$",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/photo 7.png',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 120,
                    child: Text(
                      'New collection',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      const Center(
                        child: Text(
                          'Summer\nsale',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              height: 0.9),
                        ),
                      ),
                      SizedBox(
                        height: 110,
                      ),
                      Image.asset(
                        'assets/photo 5.png',
                      ),
                    ],
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/photo 6.png',
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
