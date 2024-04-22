import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Success_Shopping_two extends StatefulWidget {
  const Success_Shopping_two({super.key});

  @override
  State<Success_Shopping_two> createState() => _Success_Shopping_twoState();
}

// ignore: camel_case_types
class _Success_Shopping_twoState extends State<Success_Shopping_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/bags.png'),
            Text(
              'Success',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Your order will be delivered soon.\nThank you for choosing our app!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 140),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MyButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  text: 'CONTINUE SHOPPING',
                  isLoading: false),
            ),
            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
