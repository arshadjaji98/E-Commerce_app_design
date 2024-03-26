import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xffDB3022),
                  size: 60,
                )),
            Text(
              'Finding similar \n      results...',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}
