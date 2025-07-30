import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/list_widget/list_screen.dart';

class ArticleDetailScreen extends StatelessWidget {
    final Map<String, String> data;
  const ArticleDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title:'Detail Article',

      body: Center(

        
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.network(data['image']!, height: 200),
            const SizedBox(height: 20),
            Text(data['description']!)
          ],
        ),
      )
      );
  }
}