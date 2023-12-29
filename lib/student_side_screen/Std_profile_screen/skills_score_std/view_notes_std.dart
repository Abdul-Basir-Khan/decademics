import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../../Instructor_Side_constants/listview_view_notes.dart';



class ViewNotesStd extends StatefulWidget {
  const ViewNotesStd({Key? key}) : super(key: key);

  @override
  State<ViewNotesStd> createState() => _ViewNotesStdState();
}

class _ViewNotesStdState extends State<ViewNotesStd> {
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
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ReusableText(
                  title: 'Baby Scratch',
                  color: Colors.white,
                  size: 24,
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
              ListView_ViewNotes(),
            ],
          ),
        ),
      ),
    );
  }
}
