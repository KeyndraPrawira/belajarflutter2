
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Container Satu',
    body: Center(
      child: Container(
        margin: EdgeInsets.all(20),
        color:  const Color.fromARGB(255, 0, 94, 255),
        width: 200,
        height: 200,
          child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.red,

            
            
            child: Text('Halo Keyndra')
          
          
        ),
      ),
    ));
  }
}