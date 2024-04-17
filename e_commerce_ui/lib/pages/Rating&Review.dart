import 'package:e_commerce_ui/componets/mybutton.dart';
import 'package:e_commerce_ui/services/image_picker_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class RatingandReviewsScreen extends StatefulWidget {
  const RatingandReviewsScreen({super.key});

  @override
  State<RatingandReviewsScreen> createState() => _RatingandReviewsScreenState();
}

class _RatingandReviewsScreenState extends State<RatingandReviewsScreen> {
  XFile? imageFile;
  Future<void> _displayAddToCart(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.grey.shade200,
      context: context,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    'What is your rate?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 18),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border, color: Colors.grey, size: 45),
                    Icon(Icons.star_border, color: Colors.grey, size: 45),
                    Icon(Icons.star_border, color: Colors.grey, size: 45),
                    Icon(Icons.star_border, color: Colors.grey, size: 45),
                    Icon(Icons.star_border, color: Colors.grey, size: 45),
                  ],
                ),
                const SizedBox(height: 18),
                const Center(
                  child: Text(
                    'Please share your opinion \nabout the product',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Your review',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(60),
                      border: InputBorder.none),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 104,
                  height: 104,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () async {
                                imageFile =
                                    await ImagePickerServices().pickCropImage(
                                        cropAspectRatio: const CropAspectRatio(
                                          ratioX: 16,
                                          ratioY: 9,
                                        ),
                                        imageSource: ImageSource.gallery);

                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Add your photos',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(text: 'SEND REVIEW', isLoading: false, onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          width: 128.0,
          height: 36,
          child: FloatingActionButton(
            onPressed: () {
              _displayAddToCart(context);
            },
            backgroundColor: Colors.red,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, color: Colors.white, size: 15),
                SizedBox(width: 8),
                Text(
                  'Write a review',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Rating&Reviews',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 41),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        '4.3',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '23 ratings',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/reviews.png',
                    width: 200,
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Row(
                children: [
                  const Text(
                    '8 reviews',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 80),
                  Checkbox(
                    activeColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'With photo',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(height: 28),
              Stack(children: [
                Container(
                  height: 297,
                  width: 311,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 17),
                        const Text(
                          'Helena Moore',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/low.png'),
                            const Text(
                              'June 5,2019',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7'' and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well."),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Helpful',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.thumb_up, color: Colors.grey, size: 15)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/photo 16.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    '8 reviews',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 80),
                  Checkbox(
                    activeColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'With photo',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(height: 28),
              Stack(children: [
                Container(
                  height: 311,
                  width: 311,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 17),
                        const Text(
                          'Kim Shine',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/low.png'),
                            const Text(
                              'August 13, 2019',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments."),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/photo 18.png',
                                width: 90,
                                height: 90,
                              ),
                              const SizedBox(width: 20),
                              Image.asset(
                                'assets/photo 19.png',
                                width: 90,
                                height: 90,
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/photo 20.png',
                                width: 90,
                                height: 90,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Helpful',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.thumb_up, color: Colors.grey, size: 15)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/photo 17.jpg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              Stack(children: [
                Container(
                  height: 297,
                  width: 311,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 17),
                        const Text(
                          'Matilda Brown',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/low.png'),
                            const Text(
                              'August 14, 2019',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7'' and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well."),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Helpful',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.thumb_up, color: Colors.grey, size: 15)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/photo 21.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}
