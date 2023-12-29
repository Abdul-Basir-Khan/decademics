import 'package:flutter/material.dart';

import '../call_screen/on_call_screen.dart';
import '../course_click/on_course_click.dart';
import '../course_click/search_bar.dart';
import '../login_screen/reusable_text.dart';
import '../menu_Screen/menu_screen.dart';
import '../student_profile/student_profile_screen.dart';

class KeyScreen3 extends StatefulWidget {
  const KeyScreen3({Key? key}) : super(key: key);

  @override
  State<KeyScreen3> createState() => _KeyScreen3State();
}

class _KeyScreen3State extends State<KeyScreen3> {
  int _currentIndex = 0;

  List<KeyScreenModel> ImageList1 = [
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_2.png"),
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_3.png"),
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_4.png"),
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_5.png"),
  ];
  List<KeyScreenModel> ImageList2 = [
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_6.png"),
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_7.png"),
  ];
  List<KeyScreenModel> ImageList3 = [
    KeyScreenModel(
        Title3: "Carter Bergson", Image: "Assets/images/key_screen/key_8.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff212529),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column
          (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const ReusableText(
                  title: "Hello,\nStylistic",
                  size: 40,
                  weight: FontWeight.w500,
                  color: Colors.white,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MenuScreen()));
                    });
                  },
                  child: const CircleAvatar(
                    radius: 30,
                    child: Image(
                      image:
                          AssetImage("Assets/images/key_screen/Ellipse 35.png"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Monday\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 36),
                        children: [
                      TextSpan(
                        text: "Aug 01, 2021",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      )
                    ])),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnCourseClick()));
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xff28B463),
                    ),
                    child: const ReusableText(
                      title: "Cousres",
                      size: 20,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const ReusableText(
                  title: "Your Students For Today",
                  size: 24,
                  weight: FontWeight.w700,
                  color: Colors.white,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchBarScreen()));
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff353B41)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _currentIndex == 0
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff353B41)),
                        child: Text(
                          "3:30 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: _currentIndex == 0
                                  ? const Color(0xff000000)
                                  : const Color(0xffFFFFFF)),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _currentIndex == 1
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff353B41)),
                        child: Text(
                          "5:30 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: _currentIndex == 1
                                  ? const Color(0xff000000)
                                  : const Color(0xffFFFFFF)),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _currentIndex == 2
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff353B41)),
                        child: Text(
                          "7:30 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: _currentIndex == 2
                                  ? const Color(0xff000000)
                                  : const Color(0xffFFFFFF)),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _currentIndex == 0
                ? Expanded(
                  child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.74,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const StudentProfileScreen()));
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                   ),
                              child: Image(
                                image: AssetImage(
                                    ImageList1[index].Image.toString()),
                              ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            GestureDetector(
                              onTap:(){
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const CallScreen()));
                                });
                              },
                              child: Text(
                              ImageList1[index].Title3.toString(),
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            ),
                            ),
                          ],
                        );
                      },
                    ),
                )
                : _currentIndex == 1
                    ? Expanded(
                      child: GridView.builder(
                      itemCount: 2,
                      shrinkWrap: true,physics: ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.6,
                              crossAxisSpacing: 10,
                          mainAxisSpacing: 10
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const StudentProfileScreen()));
                                });
                              },
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                              child: Image(image:  AssetImage(ImageList2[index]
                                  .Image
                                  .toString()),),
                              ),

                            ),
SizedBox(height: 5,),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const CallScreen()));
                                  });
                                },
                                child: Text(
                                ImageList2[index].Title3.toString(),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                              ),
                              ),
                            ),
                          ],
                        );
                      },
                        ),
                    )
                    : _currentIndex == 2
                        ? Expanded(
                          child: GridView.builder(
                          itemCount: 1,
              shrinkWrap: true,physics: ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.7,
                                  crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const StudentProfileScreen()));
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                    ),

                                    child: Image(
                                      image: AssetImage(
                                          ImageList1[index]
                                              .Image
                                              .toString()),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const CallScreen()));
                                      });
                                    },
                                    child: Text(
                                    ImageList3[index].Title3.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                  ),
                                  ),
                                ),
                              ],
                            );
                          },
                            ),
                        )
                        : Container()
          ],
        ),
      ),
    ));
  }
}

class KeyScreenModel {
  String? Title3;
  String? Image;

  KeyScreenModel({this.Title3, this.Image});
}
