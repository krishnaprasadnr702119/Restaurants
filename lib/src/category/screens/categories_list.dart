import 'package:flutter/material.dart';
import 'package:its/src/category/bloc/categories_state.dart';
import 'package:its/src/category/screens/category_detail.dart';

class CategoriesList extends StatelessWidget {
  final CategoriesLoaded state;

  const CategoriesList({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.categories.length,
      itemBuilder: (context, index) {
        final category = state.categories[index];
        return ListTile(
          leading: Image.network(category.strCategoryThumb ?? ''),
          title: Text(category.strCategory ?? ''),
          subtitle: Text(
            category.strCategoryDescription ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryDetailPage(category: category),
              ),
            );
          },
        );
      },
    );
  }
}
