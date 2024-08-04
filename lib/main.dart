//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Views/home_view.dart';
//import 'package:news_app_ui_setup/services/News_Service.dart';

void main() {
  //NewsService(Dio()).getGeneralNews();
  runApp(
    const NewsApp(),
  );
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_view(),
    );
  }
}
