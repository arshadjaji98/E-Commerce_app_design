import 'package:country_picker/country_picker.dart';
import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/success_shopping.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AddingShippingAddress(),
  ));
}

class AddingShippingAddress extends StatefulWidget {
  const AddingShippingAddress({Key? key}) : super(key: key);

  @override
  State<AddingShippingAddress> createState() => _AddingShippingAddressState();
}

class _AddingShippingAddressState extends State<AddingShippingAddress> {
  String countryCode = '';
  String selectedCountry = 'Pakistan (+92)';

  void _showCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      countryListTheme: const CountryListThemeData(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        inputDecoration: InputDecoration(
          hintText: 'Start typing to search',
          labelText: 'Search',
        ),
      ),
      onSelect: (value) {
        setState(() {
          countryCode = value.phoneCode.toString();
          selectedCountry = '${value.name} (+${value.phoneCode})';
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Adding Shipping Addresses',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Name on card',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        '3 Newbridge Court ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Chino Hills',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'State/Province/Region',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'California',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 64,
                width: 343,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zip Code (Postal Code)',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        '91709',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 90,
                width: 343,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Country',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedCountry,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _showCountryPicker(context);
                            },
                            icon: const Icon(Icons.arrow_forward_ios, size: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              MyButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuccessShopping()));
                  },
                  text: 'SAVE ADDRESS',
                  isLoading: false)
            ],
          ),
        ),
      ),
    );
  }
}
