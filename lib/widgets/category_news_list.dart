import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/models/news_model.dart';

class CategoryNewsList extends StatelessWidget {
  const CategoryNewsList({super.key, required this.newsList});

  final List<NewsModel> newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final newsItem = newsList[index];
        return NewsInfo(newsModel: newsItem);
      },
    );
  }
}
