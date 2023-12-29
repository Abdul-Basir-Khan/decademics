
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/scrolling_container_std.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/student_notes_std.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../../Instructor_Side_Screens/percent_screen/widgets/profile_detail.dart';



class SkillScoreStd extends StatefulWidget {
  const SkillScoreStd({Key? key}) : super(key: key);

  @override
  State<SkillScoreStd> createState() => _SkillScoreStdState();
}

class _SkillScoreStdState extends State<SkillScoreStd> {
  int currentIndex = 0;
  int _currentPage = 0;
  int _currentPage_1 = 0;
  int _currentPage_2 = 0;
  final PageController _pageController = PageController();
  final PageController _pageController_1 = PageController();
  final PageController _pageController_2 = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileDetail(),
              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentNotesListStd()));
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff607D8B),
                  ),
                  child: const ReusableText(
                    title: 'Class Notes',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: ReusableText(
                        title: 'Scratching',
                        color: currentIndex == 0
                            ? const Color(0xff00C2FF)
                            : Colors.white,
                        size: 20,
                      )),
                  InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: ReusableText(
                        title: 'Mixing',
                        color: currentIndex == 1
                            ? const Color(0xff6CA1F1)
                            : Colors.white,
                        size: 20,
                      )),
                  InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      child: ReusableText(
                        title: 'DJ Skills',
                        color: currentIndex == 2
                            ? const Color(0xff306BC4)
                            : Colors.white,
                        size: 20,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              currentIndex == 0
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                children: [
                    SizedBox(
                      height: 270,
                      width: double.infinity,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: const [
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '90',
                            containerColor: Color(0xff00C2FF),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '70',
                            containerColor: Color(0xff6CA1F1),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '50',
                            containerColor: Color(0xff306BC4),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index
                                  ? Colors.blue
                                  : const Color(0xffcad7ff),
                            ),
                          ),
                        );
                      }),
                    ),
                ],
              ),
                  )
                  : currentIndex == 1
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                children: [
                    SizedBox(
                      height: 270,
                      width: double.infinity,
                      child: PageView(
                        controller: _pageController_1,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage_1 = page;
                          });
                        },
                        children: const [
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '90',
                            containerColor: Color(0xff00C2FF),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '70',
                            containerColor: Color(0xff6CA1F1),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '50',
                            containerColor: Color(0xff306BC4),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage_1 == index
                                  ? Colors.blue
                                  : const Color(0xffcad7ff),
                            ),
                          ),
                        );
                      }),
                    ),
                ],
              ),
                  )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                children: [
                    SizedBox(
                      height: 270,
                      width: double.infinity,
                      child: PageView(
                        controller: _pageController_2,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage_2 = page;
                          });
                        },
                        children: const [
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '90',
                            containerColor: Color(0xff00C2FF),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '70',
                            containerColor: Color(0xff6CA1F1),
                          ),
                          ScrollingContainerStd(
                            percentageSubtitle: 'Dropping On The One',
                            percentageTitle: '50',
                            containerColor: Color(0xff306BC4),
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage_2 == index
                                  ? Colors.blue
                                  : const Color(0xffcad7ff),
                            ),
                          ),
                        );
                      }),
                    ),
                ],
              ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
