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
            child: Image.network(
              newsModel.image ?? '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                height: 200,
                width: double.infinity,
                child: Icon(
                  Icons.hide_image,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Text(
            newsModel.title,
            maxLines: 2,
            textDirection: newsModel.language == 'arabic'
                ? TextDirection.rtl
                : TextDirection.ltr,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newsModel.description,
            maxLines: 2,
            textDirection: newsModel.language == 'arabic'
                ? TextDirection.rtl
                : TextDirection.ltr,
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
