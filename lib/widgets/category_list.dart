import 'package:flutter/material.dart';
import 'package:news_app/components/category_info.dart';

import '../models/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', title: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', title: 'Entertaiment'),
    CategoryModel(image: 'assets/general.avif', title: 'General'),
    CategoryModel(image: 'assets/health.avif', title: 'Health'),
    CategoryModel(image: 'assets/science.avif', title: 'Science'),
    CategoryModel(image: 'assets/sports.avif', title: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', title: 'Technology'),
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
