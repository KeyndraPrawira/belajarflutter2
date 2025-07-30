import 'package:flutter/material.dart';

import 'package:belajar_flutter/main_layout.dart';

  class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Satu',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
        
         return Container(
            width: 200,
            height: 100,
            margin: EdgeInsets.all(10),
            color:  Colors.red,
            child: Text('Text'+ index.toString()),
          );

         
        },
      )
      );
  }
}