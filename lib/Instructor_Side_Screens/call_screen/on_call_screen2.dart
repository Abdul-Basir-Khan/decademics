
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import '../key_screens/key_screen.dart';



class OnCallScreen2 extends StatefulWidget {
  const OnCallScreen2({Key? key}) : super(key: key);

  @override
  State<OnCallScreen2> createState() => _OnCallScreen2State();
}

class _OnCallScreen2State extends State<OnCallScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff212529),
      body: Column(
        children:[
          const Image(
              height: 520,
              image: AssetImage("Assets/images/call_screen/key_10.png")),
          const ReusableTextByH(title: "Carter Bergson",size:30 ,weight: FontWeight.w500,color: Colors.white,),
          const SizedBox(height: 40,),
          const ReusableTextByH(title: "Kim here?",size: 18,weight: FontWeight.w300,color: Colors.white,),
          const SizedBox(height: 24,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.close,color: Color(0xffFF4136),size: 30,),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.done,color: Color(0xff2ECC40),size: 30,),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const KeyScreen3()));
                });
              },

              child:const ReusableTextByH(title: "Dismiss",size: 18,weight: FontWeight.w300,color: Colors.white,))
        ],
      ),
    ));
  }
}
