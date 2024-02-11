import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newsetbooks_state.dart';

class NewsetbooksCubit extends Cubit<NewsetbooksState> {
  NewsetbooksCubit(this.homerepo) : super(NewsetbooksInitial());
  final HomeRepo homerepo;

  Future<void> fetchNewstBooks() async {
    emit(NewsetbooksLoading());
    var result = await homerepo.featchNewsBooks();
    result.fold((failure) {
      emit(NewsetbooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewsetbooksSucsses(books));
    });
  }
}
