import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';


class TermOfServicesScreen extends StatefulWidget {
  const TermOfServicesScreen({Key? key}) : super(key: key);

  @override
  State<TermOfServicesScreen> createState() => _TermOfServicesScreenState();
}

class _TermOfServicesScreenState extends State<TermOfServicesScreen> {
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
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: const [
            Center(
                child: ReusableTextByH(
              title: "Term Of Services",
              size: 24,
              weight: FontWeight.w500,
              color: Colors.white,
            )),
            SizedBox(
              height: 20,
            ),
            ReusableTextByH(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nViverra urna, ultricies varius et sem vestibulum. Dolor\norci ac, diam gravida sem. Facilisi elementum proin\npulvinar ullamcorper lacinia egestas. Proin praesent at\nsenectus porttitor facilisi lacus. Pellentesque \nconsectetur diam euismod eget volutpat. Etiam aliquam\n eget vitae cras habitasse pulvinar. Mollis morbi cursus\n tincidunt aliquet pellentesque quam congue integer ac. \nTempus maecenas purus massa integer purus nunc \nultricies elementum aliquam. Turpis ultrices suspendisse \namet, vestibulum porttitor accumsan, condimentum \nmagna metus. Eu, accumsan urna quam rhoncus cras. \nVitae duis lorem pellentesque amet. Non feugiat lectus \nelementum eget ipsum. Ultrices purus purus, lorem \nviverra.\nFacilisis egestas at blandit nulla viverra consequat\n morbi massa. Orci pulvinar amet malesuada egestas \ndiam proin in commodo aenean. Suspendisse ultricies \nfringilla velit risus. Et ut pellentesque at consequat \nfringilla. Cras ornare dictum in risus condimentum \nsuspendisse sagittis nunc viverra. Tortor id cursus \nlobortis augue enim. Tellus fames purus, aenean a. \nAenean arcu sagittis, morbi quis.\nVitae morbi scelerisque amet nisl sit convallis mattis\n tempor ante. Nisi, at in\n risus maecenas. Nullam varius in risus augue quis eleifend. Leo cras id sed non at ultrices \nelementum gravida maecenas. Fermentum consequat\n pellentesque mi viverra eget ante. Elementum \npellentesque feugiat fermentum, pretium, diam quis \nipsum at quam. Ut ipsum praesent euismod elementum \nin lobortis neque diam. Mauris a convallis dolor pretium \ncommodo maecenas orci, eleifend molestie. Morbi nec \nmalesuada tortor augue arcu nullam.\nCommodo elit facilisis feugiat ut penatibus sollicitudin.\n Vel arcu elementum diam nunc. Neque lorem enim id\n scelerisque. Vitae, gravida nunc cras diam et faucibus \nmalesuada. Id nisl risus cras tempus at sagittis, cras\n dictum posuere. Donec diam at in morbi urna, amet,\n porttitor mauris. Aliquam, sagittis eget pellentesque\n odio.\nSagittis amet vel risus tortor quis magnis pharetra, orci,\n ullamcorper. Facilisis sed euismod volutpat a ut. Cursus\n venenatis morbi euismod id mauris malesuada vel. Sed \naliquam suspendisse eget suscipit et. Venenatis at\n aliquam malesuada cursus eu massa.\nAmet, et odio amet massa sit pretium semper lorem \nultricies. Diam tristique tristique scelerisque arcu ac dui\n non nunc sit.\n",
              size: 12,
              weight: FontWeight.w400,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ));
  }
}
