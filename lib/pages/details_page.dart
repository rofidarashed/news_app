import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    final link = newsModel.url;
    final url = Uri.parse(link);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 450,
            child: Image.network(
              newsModel.image ?? '',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: Icon(
                  Icons.hide_image,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.9),
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: newsModel.language == 'arabic'
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  newsModel.title,
                  maxLines: 5,
                  textDirection: newsModel.language == 'arabic'
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  newsModel.description,
                  maxLines: 15,
                  textDirection: newsModel.language == 'arabic'
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    ' ${newsModel.author}',
                    maxLines: 2,
                    textDirection: newsModel.language == 'arabic'
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(url);
                  },
                  child: Text(
                    newsModel.language == 'arabic'
                        ? 'لتفاصيل أكتر'
                        : 'For more details',
                    textDirection: newsModel.language == 'arabic'
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
