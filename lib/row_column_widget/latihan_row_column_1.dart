import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Latihan Row Column',
     body: Center(
      child: Container(
        height: 70,
        width: double.infinity,
        color:  Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Icon(Icons.call, color: Colors.blueAccent, size: 50,),
                Text('Call', style: TextStyle(color: Colors.blueAccent,))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.navigation, ),
                Text('Route')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share, ),
                Text('Share')
              ],
            ),
          ],
        ),
      ),
     ));
  }
}