import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryInfo extends StatelessWidget {
  const CategoryInfo({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.4),
            BlendMode.darken,
          ),
          image: AssetImage(category.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          category.title,
          textAlign: TextAlign.center,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
