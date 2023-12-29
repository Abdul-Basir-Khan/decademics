
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';
import 'on_call_screen2.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff212529),
      body: Column(
        children:[
          const Image(
            height: 520,
              image: AssetImage("Assets/images/call_screen/key_9.png")),
          const ReusableText(title: "Carter Bergson",size:30 ,weight: FontWeight.w500,color: Colors.white,),
          const SizedBox(height: 40,),
          const ReusableText(title: "Is Carter here?",size: 18,weight: FontWeight.w300,color: Colors.white,),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnCallScreen2()));
              });
            },

              child:const ReusableText(title: "Dismiss",size: 18,weight: FontWeight.w300,color: Colors.white,))
        ],
      ),
    ));
  }
}
