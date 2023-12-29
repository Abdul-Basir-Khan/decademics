import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';



class LegelScreen extends StatefulWidget {
  const LegelScreen({Key? key}) : super(key: key);

  @override
  State<LegelScreen> createState() => _LegelScreenState();
}

class _LegelScreenState extends State<LegelScreen> {
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
          children: [
            Center(
                child: ReusableTextByH(
                  title: "Legal",
                  size: 24,
                  weight: FontWeight.w500,
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),
            ReusableTextByH(
              title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nibh nunc id sem pretium nunc euismod neque, augue. \nPorttitor consectetur potenti ipsum fames neque.\n Consequat fringilla non est, leo ligula enim vitae\n faucibus sagittis. Turpis pulvinar dictum praesent dui sit\n mauris enim consequat. Quis amet fermentum pharetra\n dolor habitasse. Sit lorem vel lacus est, lectus sed.\n Lacus sed donec elementum scelerisque quis sed sagittis pulvinar. Eu tempor, sit mauris sed non\n maecenas nec sagittis. Habitasse a id metus, pharetra et \nmorbi risus. Sed ullamcorper in aliquam pellentesque elit \nmi. Egestas et, eu sollicitudin urna sed sed et id. Nibh \ndiam nec velit at vel pulvinar. Feugiat vivamus magnis \nproin ullamcorper ultricies tristique a tempor arcu.\nRidiculus et integer auctor mauris, quam ultrices\n sagittis, in. Arcu duis tortor, neque turpis enim, ipsum\n molestie scelerisque et. Aliquet lectus purus, in odio\n ultricies euismod amet. Tincidunt pellentesque vitae dui\n eu parturient urna condimentum neque. Pellentesque id\n platea auctor sit lorem dictumst montes, nisl a. In nec \namet, egestas commodo. ",
              size: 12,
              weight: FontWeight.w400,
              color: Colors.white,
            )
          ],
        ),
      ),
    ));
  }
}
