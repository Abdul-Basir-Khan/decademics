
import 'package:deckademics/Instructor_Side_Screens/about_us/term_of_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../login_screen/reusable_text.dart';
import 'contact_us_screen.dart';
import 'legel.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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





      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("Assets/icons/menu/about.svg",color:Colors.white),
               const SizedBox(width: 30,),
                const ReusableText(title: "About Us",size: 24,weight: FontWeight.w500,color: Colors.white,)
              ],
            ),
            const SizedBox(height: 50,),

            InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactUsScreen()));
                  });
                },



                child:const ReusableText(title: "Contact Us",weight: FontWeight.w400,size: 18,color: Colors.white,)),
          const  SizedBox(height: 40,),
            InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TermOfServicesScreen()));

                  });
                },



                child: const ReusableText(title: "Terms Of Service",weight: FontWeight.w400,size: 18,color: Colors.white,)),

            const SizedBox(height: 40,),
            InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LegelScreen()));

                  });
                },



                child:const  ReusableText(title: "Legal",weight: FontWeight.w400,size: 18,color: Colors.white,)),
          ],
        ),
      ),
    ));
  }
}
