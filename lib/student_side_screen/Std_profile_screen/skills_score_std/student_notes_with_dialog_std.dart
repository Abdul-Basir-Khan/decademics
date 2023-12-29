

import 'package:deckademics/Instructor_Side_Screens/percent_screen/student_notes.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/std_notes.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../../Instructor_Side_constants/discard_dialog.dart';
import 'discard_dialog_std.dart';

class StudentNotesWithDialogStd extends StatefulWidget {
  const StudentNotesWithDialogStd({Key? key}) : super(key: key);

  @override
  State<StudentNotesWithDialogStd> createState() => _StudentNotesWithDialogStdState();
}

class _StudentNotesWithDialogStdState extends State<StudentNotesWithDialogStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff212529),
        leading: IconButton(
          color: const Color(0xffFFFFFF),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DiscardDialogStd();
              },
            );
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentNotesStd()));
            },
            icon: const Icon(Icons.check),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              ReusableText(
                title: 'December 15',
                color: Colors.white,
                size: 24,
              ),
      SizedBox(
                height: 30,
              ),
               ReusableText(
                title:
                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Et tempor nec a, eget\nimperdiet vel pellentesque. Tincidunt duis\ntellus rutrum id vitae sed sed. Metus, tellus\nsemper nam pretium in. Gravida risus gravida\nauctor eget eget. Aliquam quisque curabitur\nat enim sed lacus tellus. Odio adipiscing\naliquam convallis at tortor adipiscing sit\nadipiscing semper. Eget morbi velit integer\ncursus tellus ipsum faucibus diam tristique.\nEuismod nunc nibh lectus platea quam diam\nnon quisque sed. Nisl ante at dolor\ncondimentum nisl facilisis non.',
                color: Colors.white,
                size: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
