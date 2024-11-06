import 'package:flutter/material.dart';
import 'package:my_project/models/category_model.dart';

class CategoryScreen extends StatelessWidget {
  // Remove const here
  CategoryScreen({super.key});

  // Define the categories list as a List<CategoryModel>
  final List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      name: 'Cows',
      image: "https://cdn.agriland.ie/uploads/2022/03/irish-simmental-society-native-1280x720.jpg",
      description: 'Types of cows',
    ),
    CategoryModel(
      id: 2,
      name: 'Dogs',
      image: "https://s3-us-west-1.amazonaws.com/assets.wagwalkingweb.com/media/daily_wag/blog_articles/body/1723045767.4127371/shih-tzu.jpg",
      description: 'Different breeds of dogs',
    ),
    CategoryModel(
      id: 3,
      name: 'Cats',
      image: "https://www.cdc.gov/healthy-pets/media/images/2024/04/Cat-on-couch.jpg",
      description: 'Various types of cats',
    ),
    CategoryModel(
      id: 4,
      name: 'Birds',
      image: "https://t3.ftcdn.net/jpg/06/10/68/10/240_F_610681083_M6XlAUkKj0I9ykA0Iz1ysOTCsNvpU5Vw.jpg",
      description: 'Different species of birds',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            leading: Image.network(
              category.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(category.name),
            subtitle: Text(category.description),
          );
        },
      ),
    );
  }
}
