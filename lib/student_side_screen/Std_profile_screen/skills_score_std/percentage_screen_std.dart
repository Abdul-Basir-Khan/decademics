
import 'package:deckademics/Instructor_Side_Screens/percent_screen/view_notes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../../Instructor_Side_Screens/percent_screen/add_notes.dart';



class PercentageScreenStd extends StatefulWidget {
  final String percentage;
  final Color percentageColor;
  final double perc;
  const PercentageScreenStd(
      {Key? key,
        required this.percentage,
        required this.percentageColor,
        required this.perc})
      : super(key: key);

  @override
  State<PercentageScreenStd> createState() => _PercentageScreenStdState();
}

class _PercentageScreenStdState extends State<PercentageScreenStd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xff212529),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff212529),
            leading: IconButton(
              color: const Color(0xffFFFFFF),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            title:const  Center(
              child:  ReusableText(
                title: "Lindsey Mango",
                size: 24,
                weight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: CircularPercentIndicator(
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 150.0,
                    lineWidth: 15.0,
                    percent: widget.perc,
                    backgroundColor: const Color(0xff212529),
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.percentage,
                              style: const TextStyle(
                                fontSize: 120,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "%",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const ReusableText(
                          title: "Dropping On The One",
                          size: 16,
                          color: Colors.white,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    progressColor: widget.percentageColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: ReusableText(
                    title: "Notes",
                    size: 24,
                    weight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      ReusableText(
                        title: "Stylistic",
                        weight: FontWeight.w400,
                        size: 14,
                        color: Colors.white,
                      ),
                      Spacer(),
                      ReusableText(
                        title: "Aug 11  2021",
                        weight: FontWeight.w400,
                        size: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title:
                  "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Erat adipiscing sit diam purus\nporttitor id magna egestas. Convallis integer\nduis commodo, fringilla. At morbi nisi\nfaucibus ultrices tortor, nibh libero, \nelementum penatibus. Eu odio proin blandit \neu metus, erat donec elementum consectetur. ",
                  size: 16,
                  weight: FontWeight.w400,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: ReusableText(
                      title: "Read More",
                      size: 16,
                      weight: FontWeight.w300,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewNotes()));
                      },
                      child: Container(
                        height: 39,
                        width: MediaQuery.sizeOf(context).width*0.45,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff607D8B),
                        ),
                        child: const Center(
                            child: ReusableText(
                              title: "View Notes",
                              size: 13,
                              weight: FontWeight.w400,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddNotes()));
                      },
                      child: Container(
                        height: 39,
                        width: MediaQuery.sizeOf(context).width*0.45,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff607D8B),
                        ),
                        child: const Center(
                            child: ReusableText(
                              title: "Add Note",
                              size: 13,
                              weight: FontWeight.w400,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
