import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Image with Stack',
     body: Stack(
      children: [
        Image.network(
          'https://upload.wikimedia.org/wikipedia/en/4/4d/Shrek_%28character%29.png'         ),
       Positioned(
          bottom: 10,
          left: 10,
          child:  Text('Manusia Kacang Ijo',
          style: TextStyle(  
            fontSize: 24,
            color: Colors.white,
            backgroundColor: Colors.black54,
          )),
        ),
      ],
     ));
  }
}