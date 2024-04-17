import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/Rating&Review.dart';
import 'package:flutter/material.dart';

class AddtocartScreen extends StatefulWidget {
  const AddtocartScreen({Key? key}) : super(key: key);

  @override
  State<AddtocartScreen> createState() => _AddtocartScreenState();
}

class _AddtocartScreenState extends State<AddtocartScreen> {
  bool isFavorite = false;
  Color iconColor = Colors.white;
  Color containerColor = Colors.grey;
  String dropDownValue = 'Size';
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
                      child: Text('L'),
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
                      child: Text('XL'),
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
        title: const Text('Short dress'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    'assets/photo 14.png',
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/photo 15.png',
                    width: 272,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            items: const [
                              DropdownMenuItem(
                                  value: 'Size',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 45),
                                      child: Text(
                                        'Size',
                                        style: TextStyle(fontSize: 12),
                                      ))),
                              DropdownMenuItem(
                                  value: 'XS',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('XS'))),
                              DropdownMenuItem(
                                  value: 'S',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('S'))),
                              DropdownMenuItem(
                                  value: 'M',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('M'))),
                              DropdownMenuItem(
                                value: 'L',
                                child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text('L')),
                              ),
                            ],
                            value: dropDownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            items: const [
                              DropdownMenuItem(
                                  value: 'Size',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 45),
                                      child: Text(
                                        'Black',
                                        style: TextStyle(fontSize: 12),
                                      ))),
                              DropdownMenuItem(
                                  value: 'XS',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('Blue'))),
                              DropdownMenuItem(
                                  value: 'S',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('Red'))),
                              DropdownMenuItem(
                                  value: 'M',
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text('Yellow'))),
                              DropdownMenuItem(
                                value: 'L',
                                child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text('Purple')),
                              ),
                            ],
                            value: dropDownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(
                          child:
                              Icon(Icons.favorite_border, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'H&M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        '\$19.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ],
                  ),
                  Text(
                    'Short black dress',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Image.asset('assets/full rating.png'),
                  Text(
                    'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed\nsquare neckline with concealed elastication.Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 18),
                    MyButton(
                      onTap: () {
                        _displayAddtoCart(context);
                      },
                      text: 'ADD TO CART',
                      isLoading: false,
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: 134,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.grey),
            SizedBox(height: 15),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping info'),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Divider(color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Support'),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RatingandReviewsScreen()));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ))
                    ],
                  ),
                ),
                Divider(color: Colors.grey),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'You can also like this',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        '12 items',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                                      color: isFavorite
                                          ? Colors.red
                                          : Colors.white,
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
                                            decoration:
                                                TextDecoration.lineThrough,
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
                                      color: isFavorite
                                          ? Colors.red
                                          : Colors.white,
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
                            Image.asset('assets/no rating.png'),
                            const Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Mango Boy',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'T-Shirt Sailing',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "10\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                      color: isFavorite
                                          ? Colors.red
                                          : Colors.white,
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
                                  Icons.star_outline,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star_outline,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star_outline,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star_outline,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star_outline,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'T-Shirt Sailing',
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
                                        "10\$",
                                        style: TextStyle(
                                          fontSize: 18,
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
                                      color: isFavorite
                                          ? Colors.red
                                          : Colors.white,
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
                                            decoration:
                                                TextDecoration.lineThrough,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
