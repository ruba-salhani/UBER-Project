import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uber_project/presentation/views/components/drawer/custom_dialog.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future pickImageFromeGallery() async {
    final imageFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (imageFile != null) {
        _image = File(imageFile.path);
      }
    });
  }

  Future pickImageFromeCamera() async {
    final imageFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (imageFile != null) {
        _image = File(imageFile.path);
      }
    });
  }
  // Future<void> getImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = image ;
  //   });
  // }

// pickImageFromeGallery(ImageSource source)
// {
//   setState(() {
//     Future<XFile?> imageFile = ImagePicker.pickImage(source: source);
//   });
// }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
          backgroundColor: Color(0xff514BC3),
          radius: 55.0,
          child: _image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.file(
                    _image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                )
              : Container(
                  child: Icon(Icons.camera_alt_outlined),
                )

          //backgroundImage: AssetImage('assets/images/person2.png'),
          ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomDialog(
              title: "",
              content: "From where do you want to take the photo?",
              firstButtonChild: "Gallery",
              firstButtonOnpressd: () {
                pickImageFromeGallery();
                Navigator.of(context).pop();
              },
              secondButtonChild: "Camera",
              secondButtonOnpressd: () {
                pickImageFromeCamera();
                Navigator.of(context).pop();
              },
            );
          },
        );
      },
    );
  }
}
