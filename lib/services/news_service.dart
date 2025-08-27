import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<NewsModel>> getTopNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_68179b829d0e7d17a102f0bc53db4e7c1929a&category=$category&country=eg');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> results = jsonData['results'];
      List<NewsModel> articlesList = [];

      for (var article in results) {
        NewsModel newsModel = NewsModel.fromJson(article);
        articlesList.add(newsModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
