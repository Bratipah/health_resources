import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/presentation/articles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Resources',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Articles(),
      // ArticleDetails(),
    );
  }
}

