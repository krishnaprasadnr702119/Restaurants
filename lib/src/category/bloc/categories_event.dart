abstract class CategoriesEvent {}

class FetchCategories extends CategoriesEvent {}

class SearchCategories extends CategoriesEvent {
  final String query;

  SearchCategories(this.query);

  @override
  List<Object> get props => [query];
}
