import 'package:belajar_flutter/list_widget/detail_screen.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ArticleListScreen extends StatelessWidget {
   ArticleListScreen({super.key});

  final List<Map<String, String>> articles = [
    {"title": "Flutter Basics", "author": "John Doe", "image" : "https://picsum.photos/200/300?2", "description" : "Learn the basics of Flutter, a powerful UI toolkit for building natively compiled applications."},
    {"title": "Advanced Flutter Techniques", "author": "Alice Johnson", "image" : "https://picsum.photos/200/300?4", "description" : "Explore advanced techniques in Flutter for building complex applications."},
    {"title": "State Management in Flutter", "author": "Jane Smith", "image" : "https://picsum.photos/200/300?1", "description" : "Learn about state management in flutter using provider and bloc."},
        {"title": "State Management in Flutter", "author": "Jane Smith", "image" : "https://picsum.photos/200/300?3", "description" : "Learn abaut state management in flutter using provider and bloc."},

    ];
   

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article'
    , body: ListView.builder(
      itemCount:  articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
      
        return GestureDetector(
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (_) => ArticleDetailScreen(data: article), // cuma 1 item
            ),
            );
          },
        
          
      
          child : Container(
            margin: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 6)
              ]    
            ),
      
            child: Row(
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    ),

                    image: DecorationImage(
                      image: NetworkImage(article['image']!),
                      fit: BoxFit.cover
                    )
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(article['title']!,
                        style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold
                        ),
                        ),

                        const SizedBox(height: 5),
                        Text(article['author']!,
                        style: const TextStyle(fontSize: 13),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
          );
          },
        ),
        );
      }
  
  }
    