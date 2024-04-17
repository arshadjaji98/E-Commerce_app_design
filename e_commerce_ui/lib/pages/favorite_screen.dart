import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Color(0xffF9F9F9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Favorites",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(29)),
                            child: const Center(
                              child: Text(
                                'Summer',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(29)),
                            child: const Center(
                              child: Text(
                                'T-Shirts',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(29)),
                            child: const Center(
                              child: Text(
                                'Shirts',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(29)),
                            child: const Center(
                              child: Text(
                                'Shirts',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 30,
                      width: 320,
                      decoration: BoxDecoration(color: Color(0xffF9F9F9)),
                      child: Row(children: [
                        SvgPicture.asset('assets/Icon 3.svg'),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('Filter'),
                        const SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/Icon 2.svg',
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('Price: lowest to high'),
                        const SizedBox(
                          width: 35,
                        ),
                        SvgPicture.asset('assets/Icon 1.svg'),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  width: 343,
                  height: 104,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Image.asset('assets/photo 22.png'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'LIME',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                ),
                                SizedBox(width: 197),
                                Icon(Icons.close, color: Colors.grey, size: 18)
                              ],
                            ),
                            const Text('Shirt',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Row(
                              children: [
                                Text(
                                  'Color:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('Blue',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(width: 25),
                                Text(
                                  'Size:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('L',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  '32\$',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 54),
                                Image.asset('assets/Rating.png')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Stack(
              children: [
                Container(
                  width: 343,
                  height: 104,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Image.asset('assets/photo 23.png'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Mango',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                ),
                                SizedBox(width: 190),
                                Icon(Icons.close, color: Colors.grey, size: 18)
                              ],
                            ),
                            const Text('Longsleeve Violeta',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Text(
                                  'Color:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('Orage',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(width: 25),
                                Text(
                                  'Size:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('S',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  '46\$',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 54),
                                Image.asset('assets/no rating.png')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Icon(Icons.shopping_bag,
                        color: Colors.white, size: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 343,
                      height: 104,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Image.asset('assets/photo 11.jpg'),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'OLIVER',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(width: 164),
                                    Icon(Icons.close,
                                        color: Colors.grey, size: 18)
                                  ],
                                ),
                                const Text('Shirt',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Row(
                                  children: [
                                    Text(
                                      'Color:',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text('Grey',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(width: 25),
                                    Text(
                                      'Size:',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text('L',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Text(
                                      '52\$',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 54),
                                    Image.asset('assets/low rating.png')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 343,
                      height: 105,
                      color: Colors.white.withOpacity(0.7),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sorry, this item is currently sold out',
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: 343,
                  height: 104,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Image.asset('assets/photo 24.png'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '&Berries',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                ),
                                SizedBox(width: 170),
                                Icon(Icons.close, color: Colors.grey, size: 18)
                              ],
                            ),
                            const Text('T-Shirt',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Row(
                              children: [
                                Text(
                                  'Color:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('Black',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(width: 25),
                                Text(
                                  'Size:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text('S',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  '51\$',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 54),
                                Image.asset('assets/Rating.png')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 162,
                          height: 184,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/photo 22.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Image.asset('assets/full rating.png'),
                        SizedBox(height: 5),
                        Text(
                          'LIME',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text('Shirt',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text('Color:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('Blue', style: TextStyle(color: Colors.black)),
                            SizedBox(width: 25),
                            Text('Size:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('L', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text('10\$',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Positioned(
                      bottom: 90,
                      left: 125,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Center(
                            child: Icon(Icons.shopping_bag,
                                color: Colors.white, size: 18)),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 162,
                          height: 184,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/photo 23.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Image.asset('assets/no rating.png'),
                        SizedBox(height: 5),
                        Text(
                          'Mango',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text('LongSleeve Violeta',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text('Color:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('Orage',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(width: 25),
                            Text('Size:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('S', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text('46\$',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Positioned(
                      bottom: 90,
                      left: 125,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Center(
                            child: Icon(Icons.shopping_bag,
                                color: Colors.white, size: 18)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 162,
                          height: 184,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/photo 25.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Image.asset('assets/full rating.png'),
                        SizedBox(height: 5),
                        Text(
                          'Oliver',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text('Shirt',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text('Color:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('Grey', style: TextStyle(color: Colors.black)),
                            SizedBox(width: 25),
                            Text('Size:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('L', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text('52\$',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Positioned(
                        bottom: 105,
                        child: Container(
                            width: 180,
                            height: 36,
                            color: Color(0xffFFFFFF).withOpacity(0.6),
                            child: Text(
                              'Sorry, this item is currently \nsold out',
                              style: TextStyle(fontSize: 12),
                            ))),
                    Container(
                      width: 164,
                      height: 290,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 162,
                          height: 184,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/photo 24.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Image.asset('assets/no rating.png'),
                        SizedBox(height: 5),
                        Text(
                          '&Barries',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text('T-Shirt',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text('Color:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('Black',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(width: 25),
                            Text('Size:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text('S', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text('55\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey,
                                    color: Colors.grey)),
                            SizedBox(width: 3),
                            Text('39\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 90,
                      left: 125,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Center(
                            child: Icon(Icons.shopping_bag,
                                color: Colors.white, size: 18)),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 40,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Text('-30%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
