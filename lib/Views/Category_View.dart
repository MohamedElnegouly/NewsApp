import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key, required this.category, required this.country});
  final String category;
  final String country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
              country: country,
            ),
          ],
        ),
      ),
    );
  }
}
