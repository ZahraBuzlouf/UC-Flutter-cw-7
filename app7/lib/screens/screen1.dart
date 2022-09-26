import 'package:app7/models/model1.dart';
import 'package:app7/screens/screen2.dart';
import 'package:app7/widgets/widget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var choosedcolor = Colors.white;
  var choosedtext = 'text';

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 44, 74),
        toolbarHeight: 80,
        title: Text(
          'يومياتي',
          style: GoogleFonts.cairo(
              textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: 30,
          )),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'اختر لون لخفلية الصفحة',
            style: GoogleFonts.cairo(
                textStyle: TextStyle(
              fontSize: 25,
            )),
          ),
          Widget1(),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: TextField(
              textDirection: TextDirection.rtl,
              controller: textController,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'اكتب هنا',
                hintStyle: GoogleFonts.cairo(
                  fontSize: 20,
                ),
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 60,
            width: 110,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Screen2(
                            newcolor: choosedcolor,
                            newtext: textController.value.text,
                          )),
                );
              },
              child: Text(
                'إرسال',
                style: GoogleFonts.cairo(
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 4, 44, 74),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
