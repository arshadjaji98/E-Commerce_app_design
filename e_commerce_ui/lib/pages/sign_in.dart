import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/componets/textfield.dart';
import 'package:e_commerce_ui/pages/Utils.dart';
import 'package:e_commerce_ui/pages/homepage.dart';
import 'package:e_commerce_ui/pages/login.dart';
import 'package:e_commerce_ui/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
                controller: userNameController,
                hintText: 'Name',
                obscureText: false),
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
                obscureText: true),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MyButton(
                  onTap: _signUp, text: 'SIGN UP', isLoading: isLoading),
            ),
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
                GestureDetector(
                    onTap: () {
                      FirebaseAuthService().signInWithGoogle();
                    },
                    child: Image.asset('assets/Google.png')),
                Image.asset('assets/Facebook.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isLoading = true;
    });
    // ignore: unused_local_variable
    String userName = userNameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    setState(() {
      isLoading = false;
    });

    if (user != null) {
      Utils.toastMessage('user successfully created');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Utils.toastMessage('There is an error');
    }
  }
}
