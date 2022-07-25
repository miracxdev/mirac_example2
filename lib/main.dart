import 'package:flutter/material.dart';
import 'package:mirac_flutter_study2/home.dart';
import 'package:mirac_flutter_study2/model.dart';
import 'package:mirac_flutter_study2/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
