import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/instructor_notes.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/your_notes.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';


class StudentNotesListStd extends StatefulWidget {
  const StudentNotesListStd({Key? key}) : super(key: key);

  @override
  State<StudentNotesListStd> createState() => _StudentNotesListStdState();
}

class _StudentNotesListStdState extends State<StudentNotesListStd> {
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
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:

      DefaultTabController(
        length: 2,
        child:
        Column(
          children: [
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('Assets/images/skill_score/note.png')),
                  SizedBox(
                    width: 20,
                  ),
                  ReusableText(
                    title: 'Notes',
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
            TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: const Color(0xffFFFFFF).withOpacity(0.98),
                labelColor: const Color(0xffFFFFFF),
                tabs:  const[
              Tab(
                text: 'Instructor',
              ),
              Tab(
                text: 'Your',
              ),
            ]

            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.77,
              child:  const TabBarView(
                  children: [
                InstructorNotes(),
                YourNotes(),
              ]),
            ),

          ],
        ),
      ),
    );
  }
}
