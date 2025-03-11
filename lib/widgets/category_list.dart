import 'package:flutter/material.dart';
import 'package:news_app/components/category_info.dart';

import '../models/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/entertainment.jpg', title: 'Entertaiment'),
    CategoryModel(image: 'assets/health.jpg', title: 'Health'),
    CategoryModel(image: 'assets/sports.avif', title: 'Sports'),
    CategoryModel(image: 'assets/technology.jpg', title: 'Technology'),
    CategoryModel(image: 'assets/business.jpg', title: 'Business'),
    CategoryModel(image: 'assets/science.jpg', title: 'Science'),
    CategoryModel(image: 'assets/world.jpg', title: 'word'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryInfo(category: categories[index]);
          }),
    );
  }
}
