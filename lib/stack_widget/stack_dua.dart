import 'package:flutter/material.dart';

class StackTwo extends StatelessWidget {
  const StackTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 200, height: 200, color:  Colors.yellow,),
        Positioned(
          top: 10,
          left: 10,
          child: Icon(Icons.star),
        ),
        Positioned(
          top: 10,
          left: 170,
          child: Icon(Icons.star),
        ),
        Positioned(
          top: 80,
          left: 90,
          child: Icon(Icons.star),
        ),
         Positioned(
          top: 160,
          left: 10,
          child: Icon(Icons.star),
        ),
         Positioned(
          top: 160,
          left: 170,
          child: Icon(Icons.star),
        ),
      ],
    );
  }
}