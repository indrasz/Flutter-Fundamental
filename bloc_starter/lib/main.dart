
import 'package:bloc_starter/views/basic_cubit/basic_cubit_page.dart';
import 'package:bloc_starter/views/bloc_builder/bloc_builder_page.dart';
import 'package:bloc_starter/views/stream_concept/stream_concept_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilderPage(),
    );
  }
}
