import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {"color": Colors.red, "partai" : "Partai Banteng"},
    {"color": Colors.blue, "partai" : "Partai Demokrat"},
    {"color": Colors.pink, "partai" : "Partai PSI"},
   

  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "List Builder",
       body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i){
          final data = listData[i];
          return Container(
            margin: EdgeInsets.all(100),
            color: data['color'],
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                data['partai'],
              ),
            ),
          );
        }
       ));
  }
}