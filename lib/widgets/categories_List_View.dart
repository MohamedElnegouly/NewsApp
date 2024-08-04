import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'business',
        country: 'us'),
    CategoryModel(
        imageAssetUrl: 'assets/health.avif',
        categoryName: 'sports',
        country: 'gb'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg',
        categoryName: 'world',
        country: 'us'),
    CategoryModel(
        imageAssetUrl: 'assets/health.avif',
        categoryName: 'health',
        country: 'eg'),
    CategoryModel(
        imageAssetUrl: 'assets/science.avif',
        categoryName: 'science',
        country: 'de'),
    CategoryModel(
        imageAssetUrl: 'assets/health.avif',
        categoryName: 'sports',
        country: 'eg'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg',
        categoryName: 'technology',
        country: 'us'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categoty: categories[index],
              country: categories[index],
            );
          }),
    );
  }
}
