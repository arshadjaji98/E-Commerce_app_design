// import 'package:csc_picker/csc_picker.dart';
// // ignore: unnecessary_import
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class Country_Select extends StatefulWidget {
//   const Country_Select({super.key});

//   @override
//   State<Country_Select> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<Country_Select> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.arrow_back_ios)),
//         title: const Text(
//           'Country Select Screen',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//       ),
//       backgroundColor: Colors.grey.shade200,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
//             child: Card(
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                     BorderRadius.circular(12.0), // Adjust the radius as needed
//               ),
//               shadowColor: Colors.black,
//               elevation: 10.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: CSCPicker(
//                   layout: Layout.vertical,
//                   flagState: CountryFlag.ENABLE,
//                   onCountryChanged: (country) {
//                     print(country);
//                   },
//                   onStateChanged: (state) {
//                     print(state);
//                   },
//                   onCityChanged: (city) {
//                     print(city);
//                   },

//                   ///placeholders for dropdown search field
//                   countrySearchPlaceholder: "Country",
//                   stateSearchPlaceholder: "State",
//                   citySearchPlaceholder: "City",

//                   ///labels for dropdown
//                   countryDropdownLabel: "Select Country",
//                   stateDropdownLabel: "Select State",
//                   cityDropdownLabel: "Select City",
//                   dropdownDialogRadius: 12.0,
//                   searchBarRadius: 30.0,
//                   dropdownDecoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Colors.white,
//                       border: Border.all(color: Colors.grey, width: 1)),

//                   disabledDropdownDecoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Colors.white,
//                       border: Border.all(color: Colors.grey, width: 1)),

//                   ///selected item style [OPTIONAL PARAMETER]
//                   selectedItemStyle: TextStyle(
//                     color: Colors.grey.shade800,
//                     fontSize: 14,
//                   ),

//                   ///DropdownDialog Heading style [OPTIONAL PARAMETER]
//                   dropdownHeadingStyle: TextStyle(
//                       color: Colors.grey.shade900,
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold),

//                   ///DropdownDialog Item style [OPTIONAL PARAMETER]
//                   dropdownItemStyle: TextStyle(
//                     color: Colors.grey.shade800,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
