

import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import '../login_screen/reusable_text.dart';

class AddNotesPopOff extends StatefulWidget {
  const AddNotesPopOff({Key? key}) : super(key: key);

  @override
  State<AddNotesPopOff> createState() => _AddNotesPopOffState();
}

class _AddNotesPopOffState extends State<AddNotesPopOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox(
                height: 50,
              ),
              ReusableText(
                title: 'Baby Scratch',
                color: Colors.white,
                size: 24,
              ),
              SizedBox(
                height: 150,
              ),
              Image(
                image: AssetImage('Assets/images/skill_score/box.png'),
              ),
              SizedBox(
                height: 10,
              ),
              ReusableTextByH(
                alignment: TextAlign.center,
                title:
                'No notes created yet.\nStart by tapping "+" to add your first note.',
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
