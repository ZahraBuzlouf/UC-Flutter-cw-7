import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app7/screens/screen1.dart';
import '';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 80,
          icon: Icon(
            Icons.cloud,
            color: Color.fromARGB(255, 255, 136, 0),
          ),
          onPressed: () {
            var choosedcolor = Color.fromARGB(255, 255, 136, 0);
          },
        ),
        IconButton(
          iconSize: 80,
          icon: Icon(
            Icons.cloud,
            color: Color.fromARGB(255, 255, 151, 32),
          ),
          onPressed: () {
            var choosedcolor = Color.fromARGB(255, 255, 151, 32);
          },
        ),
        IconButton(
          iconSize: 80,
          icon: Icon(
            Icons.cloud,
            color: Color.fromARGB(255, 255, 177, 87),
          ),
          onPressed: () {
            var choosedcolor = Color.fromARGB(255, 255, 177, 87);
          },
        ),
        IconButton(
          iconSize: 80,
          icon: Icon(
            Icons.cloud,
            color: Color.fromARGB(255, 255, 205, 147),
          ),
          onPressed: () {
            var choosedcolor = Color.fromARGB(255, 255, 205, 147);
          },
        ),
      ],
    );
  }
}
