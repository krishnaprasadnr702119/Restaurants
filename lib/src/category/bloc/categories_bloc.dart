import 'package:bloc/bloc.dart';
import 'categories_event.dart';
import 'categories_state.dart';
import '../repository/categories_repository.dart';
import '../model/categories_model.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository repository;

  CategoriesBloc(this.repository) : super(CategoriesLoading()) {
    on<FetchCategories>((event, emit) async {
      emit(CategoriesLoading());

      try {
        final categories = await repository.fetchCategories();
        emit(CategoriesLoaded(categories));
      } catch (e) {
        emit(CategoriesError());
      }
    });
  }
}
