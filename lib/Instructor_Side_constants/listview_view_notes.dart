
import 'package:flutter/material.dart';

import '../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../Instructor_Side_Screens/percent_screen/notes_detail.dart';




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

class ListView_ViewNotes extends StatefulWidget {
  const ListView_ViewNotes({
    Key? key,
  }) : super(key: key);

  @override
  State<ListView_ViewNotes> createState() => _ListView_ViewNotesState();
}

class _ListView_ViewNotesState extends State<ListView_ViewNotes> {

  final List<Browse> lst = [
    Browse(
        title: 'December 10',
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
        image: 'Assets/images/skill_score/Ellipse26.png'),
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
    return ListView.builder(
      itemCount: lst.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: InkWell(
            onTap: () {
              if (index == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NotesDetail()));
              }
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NotesDetail()));
              }
              if (index == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NotesDetail()));
              }
              if (index == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NotesDetail()));
              }
              if (index == 4) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NotesDetail()));
              }
            },
            child: Column(
              children: [
                ListTile(
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
                    padding: const EdgeInsets.only(top: 7),
                    child: ReusableText(
                      title: lst[index].subtitle,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        );
        ;
      },
    );
  }
}
