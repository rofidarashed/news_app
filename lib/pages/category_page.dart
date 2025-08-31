import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryPage extends StatefulWidget {
  final CategoryModel categoryModel;

  const CategoryPage({super.key, required this.categoryModel});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.categoryModel.title,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: RefreshIndicator(
        color: Colors.red,
        backgroundColor: Colors.white,
        onRefresh: () async {
          setState(() {
            NewsService(dio: Dio())
                .getTopNews(category: widget.categoryModel.title.toLowerCase());
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              NewsListBuilder(
                category: widget.categoryModel.title.toLowerCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
