import 'package:its/src/category/model/categories_model.dart';
import 'package:its/src/category/screens/categories_page.dart';

abstract class CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<Categories> categories;

  CategoriesLoaded(this.categories);
}

class CategoriesError extends CategoriesState {}
