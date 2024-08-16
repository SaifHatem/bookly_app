import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> fetchSearchResult({required String category}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchResult(category: category);

    result.fold((fail) {
      emit(SearchFailure(fail.errorMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
