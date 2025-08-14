import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(imageurl: "assets/images/sports.jpg", imagename: "Sports"),
    CategoryModel(
      imageurl: "assets/images/business.jpg",
      imagename: "Business",
    ),
    CategoryModel(
      imageurl: "assets/images/entertainment.jpg",
      imagename: "Entertainment",
    ),
    CategoryModel(imageurl: "assets/images/general.jpg", imagename: "General"),
    CategoryModel(imageurl: "assets/images/health.jpg", imagename: "Health"),
    CategoryModel(imageurl: "assets/images/science.jpg", imagename: "Science"),
    CategoryModel(
      imageurl: "assets/images/technology.jpg",
      imagename: "Technology",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
