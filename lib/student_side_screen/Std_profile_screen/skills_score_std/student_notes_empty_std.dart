
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';


class StudentNotesEmptyStateStd extends StatefulWidget {
  const StudentNotesEmptyStateStd({Key? key}) : super(key: key);

  @override
  State<StudentNotesEmptyStateStd> createState() => _StudentNotesEmptyStateStdState();
}

class _StudentNotesEmptyStateStdState extends State<StudentNotesEmptyStateStd> {
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
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableText(
                title: 'December 15',
                color: Color(0xffF5F5F7),
                size: 24,
              ),
              SizedBox(
                height: 25,
              ),
              ReusableText(
                title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et tempor nec a, eget imperdiet vel pellentesque. Tincidunt duis tellus rutrum id vitae sed sed. Metus, tellus semper nam pretium in. Gravida risus gravida auctor eget eget. Aliquam quisque curabitur at enim sed lacus tellus. Odio adipiscing aliquam convallis at tortor adipiscing sit adipiscing semper. Eget morbi velit integer cursus tellus ipsum faucibus diam tristique. Euismod nunc nibh lectus platea quam diam non quisque sed. Nisl ante at dolor condimentum nisl facilisis non.',
                color: Colors.white,
                size: 18,
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
