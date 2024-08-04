import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Views/Category_View.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoty, required this.country});
  final CategoryModel categoty;
  final CategoryModel country;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryView(
              category: categoty.categoryName,
              country: country.country,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
        ),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(categoty.imageAssetUrl), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              categoty.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
