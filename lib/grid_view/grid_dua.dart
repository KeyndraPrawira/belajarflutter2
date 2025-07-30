import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class GridProduct extends StatelessWidget {
   GridProduct({super.key});

  final List <Map<String, String>> products = [
    {
      'name' : 'Kaos Flutter',
      'price' : 'Rp. 120.000',
      'image' : 'https://picsum.photos/200/300?1',
    },
    {
      'name' : 'Hoodie Dart',
      'price' : 'Rp. 150.000',
      'image' : 'https://picsum.photos/200/300?2',
    },
    {
      'name' : 'Stiker Flutter',
      'price' : 'Rp. 200.000',
      'image' : 'https://picsum.photos/200/300?3',
    },
    {
      'name' : 'Topi Dart',
      'price' : 'Rp. 50.000',
      'image' : 'https://picsum.photos/200/300?4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid View',
      body :

      Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration:  BoxDecoration(
                color:  Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 6)
                ],

              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child:  ClipRRect(
                      borderRadius:  BorderRadius.circular(15),
                      child: 
                      Image.network(
                        product['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),

                      
                    )
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          product['price']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ) 
      );
  }
}