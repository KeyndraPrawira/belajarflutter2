import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Kombinasi Widget', 
    body: Center(
      child: Container(
        width : 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/300'),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Judul',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                  )
                ],
              ),
              Icon(Icons.play_circle_fill, color: Colors.white, size: 50,)
                ],
              
            ),
            ),
          ],
        ),
      ),
    ));
  }
}