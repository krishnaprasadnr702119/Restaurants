import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:its/src/category/bloc/categories_bloc.dart';
import 'package:its/src/category/bloc/categories_event.dart';
import 'package:its/src/category/repository/categories_repository.dart';
import 'package:its/src/category/bloc/categories_state.dart';
import 'package:its/src/category/indicator.dart';
import 'package:its/src/category/screens/category_detail.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: BlocProvider(
        create: (context) => CategoriesBloc(CategoriesRepository(http.Client()))
          ..add(FetchCategories()),
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            if (state is CategoriesLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is CategoriesLoaded) {
              return ListView.builder(
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  final category = state.categories[index];
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: category.strCategoryThumb != null
                          ? Image.network(
                              category.strCategoryThumb!,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return CircularProgressIndicator();
                                }
                              },
                            )
                          : Placeholder(),
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
                            builder: (context) => CategoryDetailPage(
                              category: category,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            } else if (state is CategoriesError) {
              return Center(
                child: Text('Failed to load categories'),
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
