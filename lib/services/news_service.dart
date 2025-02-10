import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  getTopNews() async {
    Response response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_68179b829d0e7d17a102f0bc53db4e7c1929a&category=top&country=eg');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];
    List<NewsModel> articls = [];

    for (var article in results)  {
      NewsModel newsModel =  NewsModel(
          image: article['image_url'],
          title: article['title'],
          description: article['description'],);
      articls.add(newsModel);
    }
    print(articls);
  }
}
