import 'package:app/controllers/productController.dart';
import 'package:app/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ProductController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridSelect(),
    );
  }
}
