import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';
import '../services/News_Service.dart';
import 'News_List_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder(
      {super.key, required this.category, required this.country});
  final String category;
  final String country;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(
      category: widget.category,
      country: widget.country,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleMoldel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('Oop there was an error , try later')),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
