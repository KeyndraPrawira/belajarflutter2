import 'package:belajar_flutter/container_widget/container_dua.dart';
import 'package:belajar_flutter/container_widget/container_satu.dart';
import 'package:belajar_flutter/grid_view/grid_dua.dart';
import 'package:belajar_flutter/grid_view/grid_satu.dart';
import 'package:belajar_flutter/latihan/latihan_course_card.dart';
import 'package:belajar_flutter/latihan/latihan_satu.dart';
import 'package:belajar_flutter/list_widget/list_dua.dart';
import 'package:belajar_flutter/list_widget/list_satu.dart';
import 'package:belajar_flutter/list_widget/list_screen.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:belajar_flutter/row_column_widget/column_satu.dart';
import 'package:belajar_flutter/row_column_widget/latihan_row_column_1.dart';
import 'package:belajar_flutter/row_column_widget/row_satu.dart';
import 'package:belajar_flutter/stack_widget/stack_dua.dart';
import 'package:belajar_flutter/stack_widget/stack_satu.dart';
import 'package:belajar_flutter/stack_widget/stack_tiga.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: GridProduct()
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar v Flutter',
      body: Center(
        child:  Text('Hello Flutter!',
                style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255), 
                fontWeight: FontWeight.bold, 
                backgroundColor: Colors.blueAccent),
                ),
      ),
    );
  }
}