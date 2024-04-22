import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/shipping_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: const Text(
                'Add new card',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Name on card',
                    style: TextStyle(color: Colors.grey),
                  ),
                )),
            const SizedBox(height: 20),
            Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card number',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '5546 8205 3693 3947',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SvgPicture.asset('assets/mastercard.svg')
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 20),
            Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        '05/23',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 20),
            Container(
              height: 64,
              width: 343,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '567',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey)),
                          child: Icon(
                            Icons.question_mark_outlined,
                            color: Colors.grey,
                            size: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(width: 8),
                Text('Use as default payment method')
              ],
            ),
            MyButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShippingAddress()));
                },
                text: 'ADD CARD',
                isLoading: true)
          ],
        ),
      ),
    );
  }

  bool value = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
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
        title: Text('Payment methods'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Your payment card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 29),
              GestureDetector(
                  onTap: () {
                    _displayBottomSheet(context);
                  },
                  child: Image.asset('assets/mastercard 2.png')),
              SizedBox(height: 25),
              Row(
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
                  SizedBox(width: 8),
                  Text('Use as default payment method')
                ],
              ),
              SizedBox(height: 25),
              Image.asset('assets/mastercard 3.png'),
              SizedBox(height: 25),
              Row(
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
                  SizedBox(width: 8),
                  Text('Use as default payment method')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
