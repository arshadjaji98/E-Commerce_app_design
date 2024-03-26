import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isLoading;

  const MyButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 370,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffDB3022)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
