
import 'dart:io';

import 'package:deckademics/Instructor_Side_Screens/obBoarding_screens/socials.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Instructor_Side_constants/circle_button.dart';
import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  File ?_image;

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const ReusableTextByH(
                    title: 'Add a profile photo',
                    size: 24,
                    weight: FontWeight.w300,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      _getImage(ImageSource.camera);
                    },
                    child:   _image == null ? CircleAvatar(
                      radius: 100,
                      backgroundColor: whiteColor,
                      child: Image.asset(('Assets/images/signUp_assets/ci_user.png')
                      ),
                    ) : CircleAvatar(
                      radius: 100,
                      backgroundColor: whiteColor,
                      backgroundImage: FileImage(_image!),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _getImage(ImageSource.camera);
                    },
                    child: const ReusableTextByH(title: 'Upload from camera roll'),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Socials()));
                  },
                  child: const CircleButton()),
            ),
          ],
        ),
      ),
    );
  }
}
