import 'package:flutter/material.dart';
import 'package:news_app/components/news_info.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return NewsInfo();
        },
      ),
    );
  }
}
