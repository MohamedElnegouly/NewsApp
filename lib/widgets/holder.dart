// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/articles_model.dart';
// import 'package:news_app_ui_setup/services/News_Service.dart';
// import 'package:news_app_ui_setup/widgets/news_container.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleMoldel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGenrNews();
//   }

//   Future<void> getGenrNews() async {
//     articles = await NewsService(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }
//   //circularprogressinddicator

//   Widget build(BuildContext context) {
//     //create listview but can control it to be lazy by delegate
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return NewsTile(
//               articleMoldel: articles[index],
//             );
//           }));
//   }
// }
