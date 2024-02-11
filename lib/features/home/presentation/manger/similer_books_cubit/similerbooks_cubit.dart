import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similerbooks_state.dart';

class SimilerbooksCubit extends Cubit<SimilerbooksState> {
  SimilerbooksCubit(this.homeRepo) : super(SimilerbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilerBook({required String catgre}) async {
    emit(SimilerbooksLoading());

    var result = await homeRepo.fetchSimilarBooks(catgry: catgre);
    result.fold((failure) {
      emit(SimilerbooksFailure((failure.errorMessage)));
    }, (books) {
      emit(SimilerbooksSuccess(books));
    });
  }
}
