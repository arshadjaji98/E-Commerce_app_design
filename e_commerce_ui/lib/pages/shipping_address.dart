import 'package:e_commerce_ui/pages/adding_shipping_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    bool value = true;
    bool value2 = false;
    bool value3 = false;

    return Scaffold(
      floatingActionButton: SizedBox(
        height: 40,
        width: 40,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Shipping Addresses',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 21),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddingShippingAddress()));
              },
              child: Container(
                width: 343,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 28, right: 23, top: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jane Doe',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 28,
                        right: 23,
                      ),
                      child: Text(
                          '3 Newbridge Court \nChino Hills, CA 91709, United States'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 23),
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.black,
                            value: value,
                            onChanged: (newValue) {
                              setState(() {
                                value = !value;
                              });
                            },
                          ),
                          const Text('Use as the shipping address')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 21),
            Container(
              width: 343,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, right: 23, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 28,
                      right: 23,
                    ),
                    child: Text(
                        '3 Newbridge Court \nChino Hills, CA 91709, United States'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 23),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.black,
                          value: value2,
                          onChanged: (newValue) {
                            setState(() {
                              value2 = !value2;
                            });
                          },
                        ),
                        const Text('Use as the shipping address')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 21),
            Container(
              width: 343,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, right: 23, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 28,
                      right: 23,
                    ),
                    child: Text(
                        '51 Riverside \nChino Hills, CA 91709, United States'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 23),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.black,
                          value: value3,
                          onChanged: (newValue) {
                            setState(() {
                              value3 = !value3;
                            });
                          },
                        ),
                        const Text('Use as the shipping address')
                      ],
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
}
