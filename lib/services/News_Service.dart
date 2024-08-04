// ignore_for_file: file_names
import 'package:dio/dio.dart';
//import 'package:flutter/foundation.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleMoldel>> getTopHeadlines(
      {required String category, required String country}) async {
    try {
      var response = await dio.get(
          'https://gnews.io/api/v4/top-headlines?country=$country&apikey=037091a76e088046aed821f94fa8286e&category=$category');
      //var jsonData = response.data; var if i dont know the respose type if i know ..>
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleMoldel> articleList = [];
      for (var article in articles) {
        ArticleMoldel articleMoldel = ArticleMoldel(
            image: article['image'],
            title: article['title'],
            subTitle: article['description']);
        articleList.add(articleMoldel);
      }
      return articleList;
    } on Exception catch (e) {
      return [];
    }
  }
}
