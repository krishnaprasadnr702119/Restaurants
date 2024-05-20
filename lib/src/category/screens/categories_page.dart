import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:its/src/category/bloc/categories_bloc.dart';
import 'package:its/src/category/bloc/categories_event.dart';
import 'package:its/src/category/repository/categories_repository.dart';
import 'package:its/src/category/bloc/categories_state.dart';
import 'package:its/src/category/indicator.dart';
import 'package:its/src/category/screens/categories_list.dart';
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
                child: CircularIndicator(),
              );
            } else if (state is CategoriesLoaded) {
              return CategoriesList(state: state); // Use the new widget
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
