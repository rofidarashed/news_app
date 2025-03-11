import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: newsModel.image != null
                ? Image.network(
                    newsModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/notFoundImage.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          Text(
            newsModel.title,
            maxLines: 2,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newsModel.description,
            maxLines: 2,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
