import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


import '../../Instructor_Side_constants/discard_dialog.dart';
import '../login_screen/reusable_text.dart';


class AddNotePercentage extends StatefulWidget {
  final String percentage;
  final Color percentageColor;
  final double perc;
  const AddNotePercentage(
      {Key? key,
      required this.percentage,
      required this.percentageColor,
      required this.perc})
      : super(key: key);

  @override
  State<AddNotePercentage> createState() => _AddNotePercentageState();
}

class _AddNotePercentageState extends State<AddNotePercentage> {
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
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DiscardDialog();
              },
            );
          },
          icon: const Icon(Icons.close),
        ),
        title: const ReusableText(
          title: "Lindsey Mango",
          size: 24,
          weight: FontWeight.w500,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.check),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 39,
                    width: 150,
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
                  const Spacer(),
                  InkWell(
                    child: Container(
                      height: 39,
                      width: 150,
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
              ),
            )
          ],
        ),
      ),
    ));
  }
}
