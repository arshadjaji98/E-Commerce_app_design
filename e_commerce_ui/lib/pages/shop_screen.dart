import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/add_to_cart_screen.dart';
import 'package:e_commerce_ui/pages/price_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isFavorite = true;
  Color iconColor = Colors.white;
  Color containerColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 352,
        width: 420,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Sort by',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 33),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Text(
                      'Popular',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 33),
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Text(
                      'Newest',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 33),
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Text(
                      'Customer review',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 420,
                    height: 48,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 33),
                      child: Center(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Price: lowest to high',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Text(
                      'Price: highest to low',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _displayAddtoCart(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.grey.shade200,
      context: context,
      builder: (context) => Container(
        height: 300,
        width: 420,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Center(
                child: Text('Select Size',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text('XS'),
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text('S'),
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text('M'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text('XS'),
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text('S'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Size Info'),
                  Icon(Icons.arrow_forward_ios, size: 12)
                ],
              ),
              SizedBox(height: 20),
              MyButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddtocartScreen()));
                  },
                  text: 'ADD TO CART',
                  isLoading: false)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('Categories'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        bottom: TabBar(
          indicatorColor: Colors.red,
          controller: _tabController,
          tabs: [
            const Tab(text: 'Women'),
            const Tab(text: 'Men'),
            const Tab(text: 'Kids'),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SUMMER SALES',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Up to 50% off',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'New',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 105,
                        ),
                        Image.asset('assets/image 1.jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Clothes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 73,
                        ),
                        Image.asset('assets/image 2.jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 87,
                        ),
                        Image.asset('assets/image 3.jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Accessories',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/image 4.jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 48,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'VIEW ALL ITEMS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Choose Category',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tops'),
                          SizedBox(height: 32),
                          Text('Shirts & Blouses'),
                          SizedBox(height: 32),
                          Text('Cardigans & Sweaters'),
                          SizedBox(height: 32),
                          Text('Knitwear'),
                          SizedBox(height: 32),
                          Text('Blazers'),
                          SizedBox(height: 32),
                          Text('Outerwear'),
                          SizedBox(height: 32),
                          Text('Pants'),
                          SizedBox(height: 32),
                          Text('Jeans'),
                          SizedBox(height: 32),
                          Text('Shorts'),
                          SizedBox(height: 32),
                          Text('Skirts'),
                          SizedBox(height: 32),
                          Text('Dresses'),
                          SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Woman's tops",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
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
                                      'T-shirts',
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
                                      'Crop tops',
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
                                      'Sleeveless',
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PriceFilter()));
                            },
                            child: Container(
                              height: 30,
                              width: 320,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade200),
                              child: Row(children: [
                                SvgPicture.asset('assets/Icon 3.svg'),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('Filter'),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _displayBottomSheet(context);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/Icon 2.svg',
                                  ),
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
                            Image.asset('assets/photo 8.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Pull over',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Mango',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/Rating.png'),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/photo 9.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Blouse',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Dorothy Perkins',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/no rating.png'),
                                  const Text(
                                    '34\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/photo 10.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'T-shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'LOST Ink',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/full rating.png'),
                                  const Text(
                                    '12\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
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
                            Image.asset('assets/photo 11.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Topshop',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/low rating.png'),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 12.jpg'),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Mango',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt SPANISH',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 13.jpg'),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Drothy Perkins',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Blouse',
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
                                              "21\$",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors.grey),
                                            ),
                                          ),
                                          Text(
                                            "14\$",
                                            style: TextStyle(
                                              fontSize: 15,
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 12.jpg'),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Mango',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shirt',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 13.jpg'),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isFavorite = !isFavorite;
                                            if (isFavorite) {
                                              iconColor = const Color.fromRGBO(
                                                  255, 255, 255, 1);
                                              containerColor = Colors.black;
                                            } else {
                                              iconColor = Colors.grey;
                                              containerColor = Colors.red;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(3)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Dorothy Perkins',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Light Blouse',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SUMMER SALES',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Up to 70% off',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'New',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 105,
                        ),
                        Image.asset('assets/men (1).jpg'),
                        Image.asset('assets/men (1).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Clothes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 73,
                        ),
                        Image.asset('assets/men (2).jpg'),
                        Image.asset('assets/men (2).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 87,
                        ),
                        Image.asset('assets/shoes.jpg'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Accessories',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/men (4).jpg'),
                        Image.asset('assets/men (4).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 48,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'VIEW ALL ITEMS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Choose Category',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tops'),
                          SizedBox(height: 32),
                          Text('Shirts '),
                          SizedBox(height: 32),
                          Text(' Sweaters'),
                          SizedBox(height: 32),
                          Text('Knitwear'),
                          SizedBox(height: 32),
                          Text('Outerwear'),
                          SizedBox(height: 32),
                          Text('Pants'),
                          SizedBox(height: 32),
                          Text('Jeans'),
                          SizedBox(height: 32),
                          Text('Shorts'),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Men's tops",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
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
                                      'T-shirts',
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
                                      'Crop tops',
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
                                      'Sleeveless',
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PriceFilter()));
                            },
                            child: Container(
                              height: 30,
                              width: 320,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade200),
                              child: Row(children: [
                                SvgPicture.asset('assets/Icon 3.svg'),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('Filter'),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _displayBottomSheet(context);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/Icon 2.svg',
                                  ),
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
                            Image.asset('assets/men (5).jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Hoodie',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/Rating.png'),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/men (4).jpg'),
                            SizedBox(width: 70),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Suit',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/Rating.png'),
                                  const Text(
                                    '34\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/men (3).jpg'),
                            const SizedBox(width: 70),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'T-shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/full rating.png'),
                                  const Text(
                                    '12\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
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
                            Image.asset('assets/photo 22.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'JAJI',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/full rating.png'),
                                  SizedBox(width: 70),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (1).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt SPANISH',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (4).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'suit',
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
                                              "21\$",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors.grey),
                                            ),
                                          ),
                                          Text(
                                            "14\$",
                                            style: TextStyle(
                                              fontSize: 15,
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (2).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 22.png',
                                          width: 164, height: 190),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isFavorite = !isFavorite;
                                            if (isFavorite) {
                                              iconColor = const Color.fromRGBO(
                                                  255, 255, 255, 1);
                                              containerColor = Colors.black;
                                            } else {
                                              iconColor = Colors.grey;
                                              containerColor = Colors.red;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(3)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shirt',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SUMMER SALES',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Up to 80% off',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'New',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 105,
                        ),
                        Image.asset('assets/kids (1).jpeg'),
                        // Image.asset('assets/men (1).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Clothes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 63,
                        ),
                        Image.asset(
                          'assets/kids (5).jpg',
                          width: 180,
                          height: 90,
                          fit: BoxFit.fill,
                        )
                        // Image.asset('assets/men (2).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 87,
                        ),
                        Image.asset('assets/shoes.jpg'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 23,
                        ),
                        const Text(
                          'Accessories',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/kids (6).jpg'),
                        SizedBox(width: 15),
                        Image.asset('assets/kids (6).jpg')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 48,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'VIEW ALL ITEMS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Choose Category',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tops'),
                          SizedBox(height: 32),
                          Text('Shirts '),
                          SizedBox(height: 32),
                          Text(' Sweaters'),
                          SizedBox(height: 32),
                          Text('Knitwear'),
                          SizedBox(height: 32),
                          Text('Outerwear'),
                          SizedBox(height: 32),
                          Text('Pants'),
                          SizedBox(height: 32),
                          Text('Jeans'),
                          SizedBox(height: 32),
                          Text('Shorts'),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Men's tops",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
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
                                      'T-shirts',
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
                                      'Crop tops',
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
                                      'Sleeveless',
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PriceFilter()));
                            },
                            child: Container(
                              height: 30,
                              width: 320,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade200),
                              child: Row(children: [
                                SvgPicture.asset('assets/Icon 3.svg'),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('Filter'),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _displayBottomSheet(context);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/Icon 2.svg',
                                  ),
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
                            Image.asset('assets/kids (2).jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Jackets',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/Rating.png'),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/men (4).jpg'),
                            SizedBox(width: 70),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Suit',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/Rating.png'),
                                  const Text(
                                    '34\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
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
                            Image.asset('assets/men (3).jpg'),
                            const SizedBox(width: 70),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'T-shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Jaji',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/full rating.png'),
                                  const Text(
                                    '12\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
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
                            Image.asset('assets/photo 22.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Shirt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'JAJI',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  Image.asset('assets/full rating.png'),
                                  SizedBox(width: 70),
                                  const Text(
                                    '51\$',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (1).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt SPANISH',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (4).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'suit',
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
                                              "21\$",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors.grey),
                                            ),
                                          ),
                                          Text(
                                            "14\$",
                                            style: TextStyle(
                                              fontSize: 15,
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/men (2).jpg',
                                          width: 162, height: 180),
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
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(0)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Image.asset('assets/photo 22.png',
                                          width: 164, height: 190),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isFavorite = !isFavorite;
                                            if (isFavorite) {
                                              iconColor = const Color.fromRGBO(
                                                  255, 255, 255, 1);
                                              containerColor = Colors.black;
                                            } else {
                                              iconColor = Colors.grey;
                                              containerColor = Colors.red;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        '(3)',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Jaji',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shirt',
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
                                              "9\$",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
