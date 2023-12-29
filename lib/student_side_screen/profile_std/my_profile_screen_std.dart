import 'dart:io';

import 'package:deckademics/student_side_screen/Std_profile_screen/about_me_std.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/what_made_you_want_std.dart';
import 'package:deckademics/student_side_screen/profile_std/repeated_textfield_std.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';
import '../menu_screen_std/menu_screen_std.dart';

class MyProfileScreenStd extends StatefulWidget {
  const MyProfileScreenStd({Key? key}) : super(key: key);

  @override
  State<MyProfileScreenStd> createState() => _MyProfileScreenStdState();
}

class _MyProfileScreenStdState extends State<MyProfileScreenStd> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();


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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff212529),
          leading: fullNameController.text.isNotEmpty
              ? IconButton(
                  color: const Color(0xffFFFFFF),
            onPressed: () {
              setState(() {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color(0xff212529),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ReusableTextByH(
                                title: "Discard Changes",
                                size: 24,
                                weight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ReusableTextByH(
                                title:
                                "Are you sure you want to discard your\nchanges? Any unsaved edits will be lost.",
                                size: 14,
                                weight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const ReusableTextByH(
                                title:
                                'Click "Discard" to proceed or "Cancel" to\ngo back and save your changes.',
                                size: 14,
                                weight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  TextButton(
                                      onPressed: () {Navigator.pop(context);},
                                      child: const ReusableTextByH(
                                        title: "Cancel",
                                        color: Colors.white,
                                        size: 14,
                                        weight: FontWeight.w500,
                                      )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuScreenStd()));

                                      },
                                      child: const ReusableTextByH(
                                        title: "Discard",
                                        size: 14,
                                        weight: FontWeight.w500,
                                        color: Color(0xff28B463),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              });
            },
                  icon: const Icon(Icons.close),
                )
              :
          IconButton(
                  color: const Color(0xffFFFFFF),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
          actions: [
            fullNameController.text.isNotEmpty
                ?
            IconButton(
                    color: const Color(0xffFFFFFF),
                    onPressed: (){

                    },
                    icon: const Icon(Icons.done),
                  )
                : const SizedBox()
          ]),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
           Center(

              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      _getImage(ImageSource.camera);
                    },
                    child:   _image == null ? CircleAvatar(
                      radius: 75,
                      backgroundColor: whiteColor,
                      child: Image.asset(("Assets/images/skill_score/Ellipse3.png")
                      ),
                    ) : CircleAvatar(
                      radius: 75,
                      backgroundColor: whiteColor,
                      backgroundImage: FileImage(_image!),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      _getImage(ImageSource.camera);
                    },
                    child: const ReusableTextByH(
                      title: 'Upload Photo',
                      size: 12,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ReusableTextByH(
              title: 'Full Name',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            RepeatedTextFieldStd(
              onChanged: (v){
                setState(() {

                });
              },
              RequiresController: fullNameController,
              RequiresHintText: "Evan Black",
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Your DJ Name Is DJ?',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(
              RequiresHintText: "Stylistic",
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Date Of Birth',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(
              RequiresHintText: "11/08/1986",
              RequiresIcon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Pronouns',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Contact Number',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(
              RequiresHintText: "317-883-9441",
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Email',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(
              RequiresHintText: "djstylistic11@gmail.com",
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Twitter (URL)',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Instagram (URL)',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Facebook (URL)',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title: 'Website',
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const RepeatedTextFieldStd(),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutMeScreenStd()));
                  });
                },
                child: const ReusableTextByH(
                  title: "About me",
                  size: 14,
                  weight: FontWeight.w400,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WhatMadeYouWantStd()));
                  });
                },
                child: const ReusableTextByH(
                  title: "What Made You Want To Learn How To DJ?",
                  size: 14,
                  weight: FontWeight.w400,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
            const ReusableTextByH(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",
              size: 14,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
