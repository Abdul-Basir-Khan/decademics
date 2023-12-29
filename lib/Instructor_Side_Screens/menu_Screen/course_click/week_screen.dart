import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';

class WeekScreens extends StatefulWidget {
  final String category;

  const WeekScreens({Key? key, required this.category}) : super(key: key);

  @override
  State<WeekScreens> createState() => _WeekScreensState();
}

class _WeekScreensState extends State<WeekScreens> {
  int selectedIndex = 1;
  late Color categoryColor;

  void selectColor(selectedCategory) {
    switch (selectedCategory) {
      case "Novice":
        categoryColor = const Color(0xffFF7F6B);
        break;
      case "Amateur":
        categoryColor = const Color(0xff4AB5EB);
        break;
      case "Intermediate":
        categoryColor = const Color(0xffFDE74C);
        break;
      case "Advance":
        categoryColor = const Color(0xff40A647);
        break;
    }
  }

  final List<String> noviceLevelOne = [
    "Introduction and overview of DJing",
    "Learn 8-count and basic song structure",
    "Practice baby scratches and the stab",
    "Start 2-2-6 pattern",
  ];
  final List<String> noviceLevelTwo = [
    "Review basics and warm-up with baby\nscratches",
    "Learn faderless tear scratch",
    "Practice crossfader control with baby\nscratches",
    "Master letting go and flipping the record",
    "Refine 2-2-6 pattern and dropping on the 1",
    "Introduce transformer scratch",
  ];
  final List<String> noviceLevelThree = [
    "Recap faderless scratches and 2-2-6\npattern",
    "Improve chop technique with varying tempo",
    "Continue practicing 2-2-6 pattern",
    "Review song structure and identifying\nsections",
    "Practice dropping songs on the 1 and\nmixing with the same instrumental",
  ];
  final List<String> noviceLevelFour = [
    "Warm up with 2-2-6 pattern",
    "Refine mixing and dropping on the 1",
    "Train the ear to identify pitch adjustments",
    "Discuss 2-handed approach and adjusting\npitch control",
    "Practice making pitch adjustments using\ndoubles",
  ];
  final List<String> noviceLevelFive = [
    "Warm up with 2-2-6 pattern",
    "Revisit faderless scratches and dropping on\nthe 1",
    "Switch to vinyl doubles for listening practice",
    "Revisit 2-handed approach with wider BPM\nrange",
  ];
  final List<String> noviceLevelSix = [
    "Warm up with 2-2-6 pattern",
    "Teach different methods of manual record\nadjustment",
    "Continue working on back-cueing and back-\nspinning",
    "Refine mixing skills and\nadjustments with\npitch control",
    "Practice faster fixing and locking in songs\nand pitch",
  ];


  final List<String> amateurLevelOne = [
    "Warm up with 2-2-6 pattern",
    "Learn 6 main scratches",
    "Practice chirp and baby scratch",
    "Mix using 2-handed approach",
  ];
  final List<String> amateurLevelTwo = [
    "Warm up with 2-2-6 pattern",
    "Improve chirp and mixing skills",
    "Work on fixing records quickly",
    "Use vinyl for ear training",
  ];
  final List<String> amateurLevelThree = [
    "Warm up with 2-2-6 pattern",
    "Teach stab and transformer scratches",
    "Practice chirp from closed fader position",
    "Mix using different vinyl",
  ];
  final List<String> amateurLevelFour = [
    "Warm up with 2-2-6 pattern",
    "Improve scratches and create combos",
    "Learn song structure and cue points",
    "Practice blending and holding a mix",
  ];
  final List<String> amateurLevelFive = [
    "Warm up with 2-2-6 pattern",
    "Revisit transformer and learn drag",
    "Focus on hand control and combos",
    "Mix by hitting song breaks",
  ];
  final List<String> amateurLevelSix = [
    "Warm up with 2-2-6 pattern",
    "Improve chirp and mixing techniques",
    "Emphasize fader control and timing",
    "Mix while using the 2-handed approach",
  ];
  final List<String> amateurLevelSeven = [
    "Warm up with 2-2-6 pattern",
    "Practice closed fader chirps at higher\ntempo",
    "Improve fluidity in using upfaders",
    "Tighten transitions and EQing",
  ];
  final List<String> amateurLevelEight = [
    "Warm up with 2-2-6 and chirp pattern",
    "Focus on seamless mixing and hitting\nbreaks",
    "Mix with larger BPM differences",
  ];
  final List<String> amateurLevelNine = [
    "Warm up with 2-2-6 and chirp pattern",
    "Briefly revisit tear scratch",
    "Practice tearing sounds forward and\nbackward",
  ];
  final List<String> amateurLevelTen = [
    "Warm up with 2-2-6 and chirp pattern",
    "Teach backspinning and looping",
    "Practice manual rewinding and dropping on\nthe beat",
  ];
  final List<String> amateurLevelEleven = [
    "Warm up with 2-2-6 and chirp pattern",
    "Combine scratches for more control",
    "Mix songs with varied intro and hook\nlengths",
  ];
  final List<String> amateurLevelTwelve = [
    "Review all 7 scratches",
    "Combine 2-3 scratch combinations",
    "Continue practicing mixing",
    "Blindfold mixing test to assess skills",
  ];


  final List<String> interLevelOne = [
    "Master effective use of Serato: cuepoints,\nlooping, Sampler SP-6, shortcuts,\ntroubleshooting",
    "Mix by ear, without relying on visual cues",
    "Learn Military scratch for fader control and\npattern understanding",

  ];
  final List<String> interLevelTwo = [
    "Teach pick up swing note scratch",
    "Basics of EQ'ing and utilizing 3-band EQ\neffectively",
    "Understand Serato's EQ Color Waveform\nand its impact on sound",
    "Mix and use EQs during transitions",
  ];
  final List<String> interLevelThree = [
    "Practice pick up at faster tempos",
    "Learn manual transition techniques (echo,\npower downs, scratching out)",
    "Incorporate manual transitions into mixing",
    "Understand and use Serato's Instant\nDoubles feature",
  ];
  final List<String> interLevelFour = [
    "Practice pick up and start Philly-Jersey\ncombination",
    "Review manual transition techniques and\nuse them in a mini-set",
    "Explore different transition techniques for\neach mix",
  ];
  final List<String> interLevelFive = [
    "Practice \"digs\" using Honeydrippers' drum\nloop",
    "Focus on scratching specific sounds or\nbeats on command",
    "Continue practicing mixing",
  ];
  final List<String> interLevelSix = [
    "Discuss effects on different mixers and\ncustomize parameters",
    "Use echo effect and understand its timing\nand impact on phrasing",
    "Revisit backspinning and manual beat\nbreakdowns",
  ];
  final List<String> interLevelSeven = [
    "Understand and implement digital loops in\nsongs",
    "Differentiate between loops and rolls on\nmixer",
    "Practice using loops while maintaining\ncorrect timing",
  ];
  final List<String> interLevelEight = [
    "Program a set with varied tempos and\ngenres",
    "Build a gradual tempo increase while\nmatching the vibe",
    "Maneuver the catalog creatively",
  ];
  final List<String> interLevelNine = [
    "Improve \"digs\" for cleaner scratches",
    "Mix with variety in tempos, transition\ntechniques, and effects",
    "Maintain an organic feel in the mix",
  ];
  final List<String> interLevelTen = [
    "Identify tempo in an acapella record",
    "Work with acapellas and matching vocal\nversions",
    "Blend acapellas over different instrumentals",
  ];
  final List<String> interLevelEleven = [
    "Revisit looping with hands and perform in\nthe middle of a song",
    "Use SP-6 sampler as a 3rd deck for\nadditional tracks",
    "Practice acapella blends with and without a\n3rd deck",
  ];
  final List<String> interLevelTwelve = [
    "Showcase skills in an impromptu set\nincorporating all techniques learned",
  ];

  final List<String> advanceLevelOne = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];
  final List<String> advanceLevelTwo = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];
  final List<String> advanceLevelThree = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];
  final List<String> advanceLevelFour = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];
  final List<String> advanceLevelFive = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];
  final List<String> advanceLevelSix = [
    "The Advanced course curriculum is\ncompletely open and may be determined\nby the instructor so long as it focuses\n on and has the end goal of sharpening\nspecific skills(scratches,patterns,\njuggling, or any techniques) and\nproving proficiency or even mastery.",
  ];



  @override
  void initState() {
    selectColor(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('Assets/icons/course_click/Course.svg'),
                  const SizedBox(
                    width: 15,
                  ),
                  const ReusableText(
                    title: 'Course Curriculum ',
                    size: 24,
                    weight: FontWeight.w500,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const ReusableText(
                        title: "Week",
                        size: 48,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableText(
                        title: widget.category,
                        size: 20,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  ReusableText(
                      title: "$selectedIndex",
                      size: 144,
                      weight: FontWeight.w900,
                      color: widget.category == "Novice"
                          ? const Color(0xffFF7F6B)
                          : widget.category == "Amateur"
                          ? const Color(0xff4AB5EB)
                          : widget.category == "Intermediate"
                          ? const Color(0xffFDE74C)
                          : const Color(0xff40A647)),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const ReusableText(
                title: "Description",
                size: 27,
                weight: FontWeight.w400,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.category == "Novice" && selectedIndex == 1
                    ? noviceLevelOne.length
                    : widget.category == "Novice" && selectedIndex == 2
                    ? noviceLevelTwo.length
                    : widget.category == "Novice" && selectedIndex == 3
                    ? noviceLevelThree.length
                    : widget.category == "Novice" && selectedIndex == 4
                    ? noviceLevelFour.length
                    : widget.category == "Novice" &&
                    selectedIndex == 5
                    ? noviceLevelFive.length
                    : widget.category == "Novice" &&
                    selectedIndex == 6
                    ? noviceLevelSix.length


                    : widget.category == "Amateur" &&
                    selectedIndex == 1
                    ? amateurLevelOne.length
                    : widget.category == "Amateur" &&
                    selectedIndex == 2
                    ? amateurLevelTwo.length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex == 3
                    ? amateurLevelThree.length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex == 4
                    ? amateurLevelFour
                    .length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex ==
                        5
                    ? amateurLevelFive
                    .length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex ==
                        6
                    ? amateurLevelSix
                    .length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex ==
                        7
                    ? amateurLevelSeven
                    .length
                    : widget.category ==
                    "Amateur" &&
                    selectedIndex ==
                        8
                    ? amateurLevelEight
                    .length
                    : widget.category == "Amateur" &&
                    selectedIndex == 9
                    ? amateurLevelNine.length
                    : widget.category == "Amateur" && selectedIndex == 10
                    ? amateurLevelTen.length
                    : widget.category == "Amateur" && selectedIndex == 11
                    ? amateurLevelEleven.length
                    : widget.category == "Amateur" && selectedIndex == 12
                    ? amateurLevelTwelve.length


                    : widget.category == "Intermediate" &&
                    selectedIndex == 1
                    ? interLevelOne.length
                    : widget.category == "Intermediate" &&
                    selectedIndex == 2
                    ? interLevelTwo.length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex == 3
                    ? interLevelThree.length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex == 4
                    ? interLevelFour
                    .length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex ==
                        5
                    ? interLevelFive
                    .length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex ==
                        6
                    ? interLevelSix
                    .length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex ==
                        7
                    ? interLevelSeven
                    .length
                    : widget.category ==
                    "Intermediate" &&
                    selectedIndex ==
                        8
                    ? interLevelEight
                    .length
                    : widget.category == "Intermediate" &&
                    selectedIndex == 9
                    ? interLevelNine.length
                    : widget.category == "Intermediate" && selectedIndex == 10
                    ? interLevelTen.length
                    : widget.category == "Intermediate" && selectedIndex == 11
                    ? interLevelEleven.length
                    : widget.category == "Intermediate" && selectedIndex == 12
                    ? interLevelTwelve.length
                    :


                widget.category == "Advance" && selectedIndex == 1
                    ? advanceLevelOne.length
                    : widget.category == "Advance" && selectedIndex == 2
                    ? advanceLevelTwo.length
                    : widget.category == "Advance" && selectedIndex == 3
                    ? advanceLevelThree.length
                    : widget.category == "Advance" && selectedIndex == 4
                    ? advanceLevelFour.length
                    : widget.category == "Advance" &&
                    selectedIndex == 5
                    ? advanceLevelFive.length
                    : widget.category == "Advance" &&
                    selectedIndex == 6
                    ? advanceLevelSix.length:
                0,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4.0, right: 8.0),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            // Customize the bullet color here
                            radius: 3.0,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ReusableText(
                          title: widget.category == "Novice" &&
                              selectedIndex == 1
                              ? noviceLevelOne[index]
                              : widget.category == "Novice" &&
                              selectedIndex == 2
                              ? noviceLevelTwo[index]
                              : widget.category == "Novice" &&
                              selectedIndex == 3
                              ? noviceLevelThree[index]
                              : widget.category == "Novice" &&
                              selectedIndex == 4
                              ? noviceLevelFour[index]
                              : widget.category == "Novice" &&
                              selectedIndex == 5
                              ? noviceLevelFive[index]
                              : widget.category == "Novice" &&
                              selectedIndex == 6
                              ? noviceLevelSix[index]


                              : widget.category ==
                              "Amateur" &&
                              selectedIndex == 1
                              ? amateurLevelOne[index]
                              : widget.category ==
                              "Amateur" &&
                              selectedIndex == 2
                              ? amateurLevelTwo[
                          index]
                              : widget.category ==
                              "Amateur" &&
                              selectedIndex ==
                                  3
                              ? amateurLevelThree[
                          index]
                              : widget.category ==
                              "Amateur" &&
                              selectedIndex ==
                                  4
                              ? amateurLevelFour[
                          index]
                              : widget.category ==
                              "Amateur" &&
                              selectedIndex ==
                                  5
                              ? amateurLevelFive[
                          index]
                              : widget.category == "Amateur" &&
                              selectedIndex ==
                                  6
                              ? amateurLevelSix[
                          index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 7
                              ? amateurLevelSeven[index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 8
                              ? amateurLevelEight[index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 9
                              ? amateurLevelNine[index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 10
                              ? amateurLevelTen[index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 11
                              ? amateurLevelEleven[index]
                              : widget.category == "Amateur" &&
                              selectedIndex == 12
                              ? amateurLevelTwelve[index]


                              : widget.category ==
                              "Intermediate" &&
                              selectedIndex == 1
                              ? interLevelOne[index]
                              : widget.category ==
                              "Intermediate" &&
                              selectedIndex == 2
                              ? interLevelTwo[
                          index]
                              : widget.category ==
                              "Intermediate" &&
                              selectedIndex ==
                                  3
                              ? interLevelThree[
                          index]
                              : widget.category ==
                              "Intermediate" &&
                              selectedIndex ==
                                  4
                              ? interLevelFour[
                          index]
                              : widget.category ==
                              "Intermediate" &&
                              selectedIndex ==
                                  5
                              ? interLevelFive[
                          index]
                              : widget.category == "Intermediate" &&
                              selectedIndex ==
                                  6
                              ? interLevelSix[
                          index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 7
                              ? interLevelSeven[index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 8
                              ? interLevelEight[index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 9
                              ? interLevelNine[index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 10
                              ? interLevelTen[index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 11
                              ? interLevelEleven[index]
                              : widget.category == "Intermediate" &&
                              selectedIndex == 12
                              ? interLevelTwelve[index]:


                          widget.category == "Advance" &&
                              selectedIndex == 1
                              ? advanceLevelOne[index]
                              : widget.category == "Advance" &&
                              selectedIndex == 2
                              ? advanceLevelTwo[index]
                              : widget.category == "Advance" &&
                              selectedIndex == 3
                              ? advanceLevelThree[index]
                              : widget.category == "Advance" &&
                              selectedIndex == 4
                              ? advanceLevelFour[index]
                              : widget.category == "Advance" &&
                              selectedIndex == 5
                              ? advanceLevelFive[index]
                              : widget.category == "Advance" &&
                              selectedIndex == 6
                              ? advanceLevelSix[index]


                              :


                          'Nothing to show',
                          size: 18,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: widget.category == "Novice"
                    ? 6
                    : widget.category == "Amateur"
                    ? 12
                    : widget.category == "Intermediate"
                    ? 12
                    : 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 6,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index + 1;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedIndex == index + 1
                            ? categoryColor
                            : Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: widget.category == "Novice"
                                ? const Color(0xffFF7F6B)
                                : widget.category == "Amateur"
                                ? const Color(0xff4AB5EB)
                                : widget.category == "Intermediate"
                                ? const Color(0xffFDE74C)
                                : const Color(0xff40A647)),
                      ),
                      child: ReusableText(
                          title: "${index + 1}",
                          color: selectedIndex == index + 1
                              ? Colors.black
                              : categoryColor),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
