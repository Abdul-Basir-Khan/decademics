
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xff212529),
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





      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ring_volume_outlined,color: Colors.white,),
                SizedBox(width: 20,),
                ReusableText(title: "Contact Us",size: 24,weight:FontWeight.w500 ,color: Colors.white,)
              ],
            ),
            SizedBox(height: 50,),
            ReusableText(title: "Address",size: 18,weight:FontWeight.w500 ,color: Colors.white,),
            SizedBox(height: 10,),
            ReusableText(title: "6108 N. College Ave,\nIndianapolis, Indiana 46220",size: 18,weight: FontWeight.w400,color: Color(0xff40A647),),
            SizedBox(height: 50,),
            ReusableText(title: "Contact Number",size: 18,weight:FontWeight.w500 ,color: Colors.white,),
            SizedBox(height: 10,),
            ReusableText(title: "317-288-3658",size: 18,weight: FontWeight.w400,color: Color(0xff40A647),),

            SizedBox(height: 50,),
            ReusableText(title: "Email",size: 18,weight:FontWeight.w500 ,color: Colors.white,),
            SizedBox(height: 10,),
            ReusableText(title: "Info@deckademics.com",size: 18,weight: FontWeight.w400,color: Color(0xff40A647),),

            SizedBox(height: 50,),
            ReusableText(title: "OFFICE HOURS",size: 18,weight:FontWeight.w500 ,color: Colors.white,),
            SizedBox(height: 10,),
            ReusableText(title: "Mon-Thurs: 3pm – 9pm\nFriday: 3pm – 7pm\nSaturday: 3pm-5pm\nSunday: Closed",size: 18,weight: FontWeight.w400,color: Color(0xffFFFFFF),)

          ],
        ),
      ),
    ));
  }
}
