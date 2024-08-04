import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleMoldel> articles;
  const NewsListView({super.key, required this.articles});
  @override
  //circularprogressinddicator
  Widget build(BuildContext context) {
    //create listview but can control it to be lazy by delegate
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articleMoldel: articles[index],
      );
    }));
  }
}
