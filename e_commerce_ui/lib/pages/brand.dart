import 'package:flutter/material.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  List<String> brands = [
    'addidas',
    'addidas Original',
    'Blend',
    'Boutique Moschino',
    'Champion',
    'Diesel',
    'Jack & Jones',
    'Naf Naf',
    'Red Valentino',
    's.Oliver'
  ];

  List<bool> checked = List.filled(10, false);
  List<Color> textColors = List.generate(10, (index) => Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brand'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                ),
              ),
            ),
            SizedBox(height: 26),
            Expanded(
              child: ListView.builder(
                itemCount: brands.length,
                itemExtent: 50,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    activeColor: Colors.red,
                    title: Text(
                      brands[index],
                      style: TextStyle(
                        fontSize: 15,
                        color: textColors[index],
                      ),
                    ),
                    value: checked[index],
                    onChanged: (bool? value) {
                      setState(() {
                        checked[index] = value ?? false;
                        // Change text color based on checkbox state
                        textColors[index] =
                            value ?? false ? Colors.red : Colors.black;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
