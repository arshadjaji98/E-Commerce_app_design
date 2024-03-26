import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'New',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
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
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Clothes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
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
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
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
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Accessories',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/image 4.jpg')
                      ],
                    ),
                  ),
                  SizedBox(
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
                    child: Center(
                      child: Text(
                        'VIEW ALL ITEMS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'Choose Category',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Center(child: Text('Content for Man')),
          const Center(child: Text('Content for Kids')),
        ],
      ),
    );
  }
}
