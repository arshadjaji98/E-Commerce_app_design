import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/componets/textfield.dart';
import 'package:e_commerce_ui/pages/login.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 73,
            ),
            MyTextField(
                controller: controller, hintText: 'Name', obscureText: false),
            const SizedBox(
              height: 8,
            ),
            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 8,
            ),
            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 14),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Color(0xffDB3022),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            MyButton(onTap: () {}, text: 'SIGN UP', isLoading: false),
            const SizedBox(
              height: 126,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('Or sign up with social account'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Google.png'),
                Image.asset('assets/Facebook.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
