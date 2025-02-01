import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            NewsList(),
          ],
        ),
      ),
    );
  }
}
