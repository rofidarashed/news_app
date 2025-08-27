import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryPage extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryPage({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(categoryModel.title),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(
              category: categoryModel.title.toLowerCase(),
            ),
          ],
        ),
      ),
    );
  }
}
