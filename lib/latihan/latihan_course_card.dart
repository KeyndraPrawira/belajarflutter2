import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Course Card',
     body: Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Container(
          width: 450,
          height: 400,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color:  Colors.grey,
                blurRadius: 8,
                offset: Offset(0,4),
              )
            ]

          ),
          child: Column(
            children: [
              Container(
            width: double.infinity,
            height: 200,
            margin: const EdgeInsets.only( bottom: 5),
            decoration: BoxDecoration(
           borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.blueAccent,
            image: DecorationImage(
              image: NetworkImage('https://files.bo3.gg/uploads/image/82371/image/webp-87b71cf3aa555d1785d06750a4b6166d.webp'),
              fit: BoxFit.cover
            ),
              
              
            ),
            
              ),
             
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('Kursus Grow A Garden Roblox',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
            
           
                
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                      child: Image.network('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da841127b024929a3e8f9edff47c',
                      width: 20,
                      height: 20, 

                      )
                      ),
                    const SizedBox(width: 5,),
                      Text('Keyndra Ardhi Prawira', 
                      style: TextStyle( fontSize: 13,
                        color: Colors.green,
                      )),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10),
                  child: Text('Dapatkan ilmu tentang cara menanam dan merawat tanaman di Roblox Grow A Garden, dapatkan 2 Trilliun sheckles hanya dalam 2 hari!', 
                  style: TextStyle( fontSize: 13,
                    color: Colors.grey[600],
                  )),
                ),

                Container(
                  margin: const EdgeInsets.all(7),
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    
                    Icon(Icons.date_range, size: 17,
                    ),
                    const SizedBox(width: 3,),
                    Text('20 Mei 2025')
                  ]),
                  
                ),

                Container(
                  margin: const EdgeInsets.only(left: 10, top: 2, bottom: 2),
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    
                    Icon(Icons.lock_clock, size: 17,
                    ),
                    const SizedBox(width: 3,),
                    Text('08.00 - 12.00 WIB')
                  ]),
                  
                ),

                Container(
                  margin: const EdgeInsets.only(left: 10, top: 5, bottom: 2),
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    
                    child: Text('Ikuti Kursus',
                    style: TextStyle(color: Colors.white),
                    ),
                    
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                  
                )
            

            ],
           
                      
          
          ),
        ),

        
         
      ],
     )
     );
  }
}