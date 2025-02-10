import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/services/news_service.dart';

void main() {
  NewsService(dio: Dio()).getTopNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
