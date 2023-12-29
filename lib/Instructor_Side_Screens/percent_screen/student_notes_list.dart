import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/listview_student_notes.dart';
import '../login_screen/reusable_text.dart';

class StudentNotesList extends StatefulWidget {
  const StudentNotesList({Key? key}) : super(key: key);

  @override
  State<StudentNotesList> createState() => _StudentNotesListState();
}

class _StudentNotesListState extends State<StudentNotesList> {
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
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
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
              SizedBox(
                height: 15,
              ),
              ReusableText(
                title: '2022',
                color: Colors.white,
                size: 14,
              ),
              ListViewStudentNotes(),
            ],
          ),
        ),
      ),
    );
  }
}
