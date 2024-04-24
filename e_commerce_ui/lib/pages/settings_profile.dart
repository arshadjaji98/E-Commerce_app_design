import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  bool _switchValuenewarrivals = true;
  bool _switchValuesales = true;
  bool _switchValueDelivery = true;

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          height: 352,
          width: 420,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Password Change',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64,
                          width: 343,
                          color: Colors.white,
                          child: const Padding(
                            padding: const EdgeInsets.all(22),
                            child: Text(
                              'Old Password',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: 18),
                        Container(
                          height: 64,
                          width: 343,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(22),
                            child: Text(
                              'New Password',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Container(
                          height: 64,
                          width: 343,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(22),
                            child: Text(
                              'Repeat New Password',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        MyButton(
                            onTap: () {},
                            text: 'SAVE PASSWORD',
                            isLoading: false)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: const [Icon(Icons.search)],
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                const Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                SizedBox(height: 23),
                Text(
                  'Personal Information',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 21),
                Container(
                    height: 64,
                    width: 343,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Full Name',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )),
                SizedBox(height: 21),
                Container(
                    height: 64,
                    width: 343,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Date of birth',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '12/12/1989',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        _displayBottomSheet(context);
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 21),
                Container(
                    height: 64,
                    width: 343,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Password',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '****************',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 45),
                Text(
                  'Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sales',
                    ),
                    CupertinoSwitch(
                      value: _switchValuesales,
                      onChanged: (value) {
                        setState(() {
                          _switchValuesales = value;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New arrivals',
                    ),
                    CupertinoSwitch(
                      value: _switchValuenewarrivals,
                      onChanged: (value) {
                        setState(() {
                          _switchValuenewarrivals = value;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery status changes',
                    ),
                    CupertinoSwitch(
                      value: _switchValueDelivery,
                      onChanged: (value) {
                        setState(() {
                          _switchValueDelivery = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
