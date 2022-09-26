import 'package:app7/models/model1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app7/screens/screen1.dart';
import 'package:app7/widgets/widget1.dart';

class Screen2 extends StatelessWidget {
  Screen2({
    Key? key,
    required this.newcolor,
    required this.newtext,
  }) : super(key: key);

  final Color newcolor;
  String newtext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newcolor,
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
      body: Container(
          color: newcolor,
          child: Center(
            child: Text(newtext),
          )),
    );
  }
}
