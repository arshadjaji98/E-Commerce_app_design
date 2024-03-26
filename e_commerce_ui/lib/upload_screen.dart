import 'package:e_commerce_ui/pages/componets/mybutton.dart';
import 'package:e_commerce_ui/pages/search_page.dart';
import 'package:e_commerce_ui/services/image_picker_services.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  XFile? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Visual Search'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/image.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              left: MediaQuery.of(context).size.width / 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      ' Search for an outfit by\n taking a photo or uploading\n an image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    onTap: () async {
                      imageFile = await ImagePickerServices()
                          .pickCropImage(
                              cropAspectRatio: CropAspectRatio(
                                ratioX: 16,
                                ratioY: 9,
                              ),
                              imageSource: ImageSource.camera)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                        return null;
                      });
                      setState(() {});
                    },
                    text: 'TAKE A PHOTO',
                    isLoading: false,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () async {
                      imageFile = await ImagePickerServices()
                          .pickCropImage(
                              cropAspectRatio: CropAspectRatio(
                                ratioX: 16,
                                ratioY: 9,
                              ),
                              imageSource: ImageSource.gallery)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                        return null;
                      });
                      ;
                      setState(() {});
                    },
                    child: Container(
                      height: 55,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          'UPLOAD AN IMAGE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
