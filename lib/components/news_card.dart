import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/pages/details_page.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(newsModel: newsModel),
              ));
        },
        child: ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.grey[200]!,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              child: Image.network(
                newsModel.image ?? '',
                fit: BoxFit.cover,
                height: 300,
                width: 100,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  height: 170,
                  width: 100,
                  child: Icon(
                    Icons.hide_image,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            newsModel.title,
            maxLines: 2,
            textDirection: newsModel.language == 'arabic'
                ? TextDirection.rtl
                : TextDirection.ltr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            newsModel.description,
            maxLines: 1,
            textDirection: newsModel.language == 'arabic'
                ? TextDirection.rtl
                : TextDirection.ltr,
            style: TextStyle(
              color: Colors.blueGrey[400],
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
