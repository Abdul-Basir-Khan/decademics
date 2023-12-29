
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../login_screen/reusable_text.dart';

class AttendanceMissedScreen extends StatefulWidget {
  const AttendanceMissedScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceMissedScreen> createState() => _AttendanceMissedScreenState();
}

class _AttendanceMissedScreenState extends State<AttendanceMissedScreen> {
  int _currentIndexForAttendance = 1;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  ReusableText(
                    title: "Attendance",
                    weight: FontWeight.w500,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableText(
                    title: "November 15",
                    weight: FontWeight.w300,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableText(
                    title: "Attendace Type",
                    weight: FontWeight.w400,
                    size: 12,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndexForAttendance = 1;
                      });
                    },
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _currentIndexForAttendance == 1
                            ? const Color(0xff28B463)
                            : const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          "Here",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: _currentIndexForAttendance == 1
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndexForAttendance = 2;
                      });
                    },
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _currentIndexForAttendance == 2
                            ? const Color(0xff28B463)
                            : const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          "Missed",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: _currentIndexForAttendance == 2
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndexForAttendance = 3;
                      });
                    },
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _currentIndexForAttendance == 3
                            ? const Color(0xff28B463)
                            : const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          "Make Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: _currentIndexForAttendance == 3
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xff353B41),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: ReusableText(
              title: "Set Date",
              size: 12,
              weight: FontWeight.w400,
              color: Colors.white,
            )),
            const SizedBox(
              height: 10,
            ),
            _currentIndexForAttendance == 1
                ?

            Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff353B41)),
                    child:

                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              ReusableText(
                                title: "Tue, May 9",
                                size: 32,
                                weight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Color(0x75FFFFFF),
                        ),
                        SfDateRangePicker(
                          selectionColor:const Color(0xff28B463) ,
                          todayHighlightColor: Colors.white,
                          selectionMode:DateRangePickerSelectionMode.single,
                          headerStyle: const DateRangePickerHeaderStyle(
                              textAlign: TextAlign.left,
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              )
                          ),

                          view: DateRangePickerView.month,
                          showNavigationArrow: true,
                          onSelectionChanged: _onSelectionChanged,
                        ),
                      ],
                    ),
                  )
                : _currentIndexForAttendance == 2
                    ? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff353B41)),

              child:

              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        ReusableText(
                          title: "Tue, May 9",
                          size: 32,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0x75FFFFFF),
                  ),
                  SfDateRangePicker(
                    selectionColor:const Color(0xff28B463) ,
                    todayHighlightColor: Colors.white,
                    selectionMode:DateRangePickerSelectionMode.single,
                    headerStyle: const DateRangePickerHeaderStyle(
                        textAlign: TextAlign.left,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        )
                    ),

                    view: DateRangePickerView.month,
                    showNavigationArrow: true,
                    onSelectionChanged: _onSelectionChanged,
                  ),
                ],
              ),
                      )
                    : _currentIndexForAttendance == 3
                        ? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff353B41)),
              child:

              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        ReusableText(
                          title: "Tue, May 9",
                          size: 32,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0x75FFFFFF),
                  ),
                  SfDateRangePicker(
                    selectionColor:const Color(0xff28B463) ,
                    todayHighlightColor: Colors.white,
                    selectionMode:DateRangePickerSelectionMode.single,
                    headerStyle: const DateRangePickerHeaderStyle(
                      textAlign: TextAlign.left,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      )
                    ),

                    view: DateRangePickerView.month,
                    showNavigationArrow: true,
                    onSelectionChanged: _onSelectionChanged,
                  ),
                ],
              ),

                          )
                        : Container(),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){

                setState(() {

                  Navigator.pop(context);
                });
              },
              child: Container(
                width: double.infinity,
                padding:const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff28B463)),
                child:const  Center(
                    child: ReusableText(
                  title: "Done",
                  color: Colors.white,
                  size: 16,
                  weight: FontWeight.w500,
                )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
