import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';



class WhatMadeYouWant extends StatefulWidget {
  const WhatMadeYouWant({Key? key}) : super(key: key);

  @override
  State<WhatMadeYouWant> createState() => _WhatMadeYouWantState();
}

class _WhatMadeYouWantState extends State<WhatMadeYouWant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
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
        body:const Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(children: [
            Center(child: ReusableTextByH(title: 'What made You Want To Learn\nHow To DJ',size: 24,weight: FontWeight.w500,color: Colors.white,)),
            SizedBox(height: 15,),
            ReusableTextByH(title: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Et tempor nec a, eget\nimperdiet vel pellentesque. Tincidunt duis\ntellus rutrum id vitae sed sed. Metus, tellus\nsemper nam pretium in. Gravida\nrisus gravida auctor eget eget. Aliquam quisque curabitur\nat enim sed lacus tellus. Odio adipiscing\naliquam convallis at tortor adipiscing sit\nadipiscing semper. Eget morbi velit integer\ncursus tellus ipsum faucibus diam tristique.\nEuismod nunc nibh lectus platea quam diam\nnon quisque sed. Nisl ante at dolor\ncondimentum nisl facilisis non.',size: 18,weight: FontWeight.w400,color: Colors.white,),
          ],),
        ),
    ));
  }
}
