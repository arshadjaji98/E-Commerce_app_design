import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/componets/textfield.dart';
import 'package:e_commerce_ui/pages/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Forgot password',
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 87,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: Text(
                'Please, enter your email address. You will receive \na link to create a new password via email.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MyButton(
                onTap: () {
                  setState(() {
                    isLoading = true;
                  });
                  auth
                      .sendPasswordResetEmail(
                          email: emailController.text.toString())
                      .then((value) {
                    Utils.toastMessage(
                        'We have sent you an email. Please check your inbox.');
                  }).catchError((error) {
                    Utils.toastMessage(error.toString());
                  }).whenComplete(() {
                    setState(() {
                      isLoading = false;
                    });
                  });
                },
                text: 'SEND',
                isLoading: isLoading,
              ),
            ),
            SizedBox(
              height: 126,
            ),
          ],
        ),
      ),
    );
  }
}
