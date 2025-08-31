import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Flash',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        color: Colors.red,
        backgroundColor: Colors.white,
        onRefresh: () async {
          setState(() {
            NewsService(dio: Dio()).getTopNews(category: 'top');
          });
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryList(),
              ),
              NewsListBuilder(category: 'top'),
            ],
          ),
        ),
      ),
    );
  }
}
