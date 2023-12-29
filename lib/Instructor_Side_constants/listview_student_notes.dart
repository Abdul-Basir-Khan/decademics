
import 'package:flutter/material.dart';

import '../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../Instructor_Side_Screens/percent_screen/student_note_with_dialog.dart';
import '../Instructor_Side_Screens/percent_screen/student_notes_empty_state.dart';

class Browse {
  String title;
  String subtitle;
  String image;

  Browse({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

class ListViewStudentNotes extends StatefulWidget {
  const ListViewStudentNotes({
    Key? key,
  }) : super(key: key);

  @override
  State<ListViewStudentNotes> createState() => _ListViewStudentNotesState();
}

class _ListViewStudentNotesState extends State<ListViewStudentNotes> {
  int _current = 0;
  final List<Browse> lst = [
    Browse(
        title: 'December 5',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
    Browse(
        title: 'December 29',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
    Browse(
        title: 'December 22',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
    Browse(
        title: 'December 15',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
    Browse(
        title: 'December 8',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
    Browse(
        title: 'December 1',
        subtitle:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fringilla condimentum felis\nvitae nibh. Feugiat a ligula diam magna\nfacilisis viverra egestas. Duis.',
        image: 'Assets/images/skill_score/Ellipse29.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesEmptyState()));
                }
                if (index == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesWithDialog()));
                }
                if (index == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesEmptyState()));
                }
                if (index == 3) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesWithDialog()));
                }
                if (index == 4) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesEmptyState()));
                }
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(lst[index].image),
                ),
                title: ReusableText(
                  title: lst[index].title,
                  color: Colors.white,
                  size: 24,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ReusableText(
                    title: lst[index].subtitle,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
