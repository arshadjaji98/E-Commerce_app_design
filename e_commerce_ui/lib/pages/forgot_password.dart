import 'package:e_commerce_ui/pages/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/componets/textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final controller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Forgot password',
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: Text(
              'Please, enter your email address. You will receive \na link to create a new password via email.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(
            height: 28,
          ),
          MyButton(onTap: () {}, text: 'SEND', isLoading: false),
          const SizedBox(
            height: 126,
          ),
        ],
      ),
    );
  }
}
