
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
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
        title: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(

            hintText: "Search for amateur student",
            hintStyle: TextStyle(color: Colors.white,fontSize: 18),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(
              children:[
                ReusableText(title: "Recent Here",size: 18,weight: FontWeight.w400,color: Colors.white,),
                Spacer(),
                Icon(Icons.close,color: Colors.white,),

              ],
            ),
            SizedBox(height: 20,),
            ReusableText(title: "Cheyenne Stanton",size: 24,color: Colors.white,weight: FontWeight.w400,),
            SizedBox(height: 10,),
            ReusableText(title: "Jocelyn Rosser",size: 24,color: Colors.white,weight: FontWeight.w400,),

          ],
        ),
      ),

    ));
  }
}
