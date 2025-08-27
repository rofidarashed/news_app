import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/models/news_model.dart';

class NewsList extends StatelessWidget {
  final List<NewsModel> articles;

  const NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsInfo(newsModel: articles[index]);
        },
      ),
    );
  }
}
