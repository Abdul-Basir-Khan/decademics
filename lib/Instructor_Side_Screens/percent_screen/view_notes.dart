import 'package:flutter/material.dart';


import '../../Instructor_Side_constants/listview_view_notes.dart';
import '../login_screen/reusable_text.dart';


class ViewNotes extends StatefulWidget {
  const ViewNotes({Key? key}) : super(key: key);

  @override
  State<ViewNotes> createState() => _ViewNotesState();
}

class _ViewNotesState extends State<ViewNotes> {
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
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const [
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
    );
  }
}
