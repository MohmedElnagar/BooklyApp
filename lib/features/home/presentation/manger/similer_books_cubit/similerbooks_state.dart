part of 'similerbooks_cubit.dart';

sealed class SimilerbooksState extends Equatable {
  const SimilerbooksState();

  @override
  List<Object> get props => [];
}

final class SimilerbooksInitial extends SimilerbooksState {}

final class SimilerbooksLoading extends SimilerbooksState {}

final class SimilerbooksSuccess extends SimilerbooksState {
  final List<BookModel> books;

  const SimilerbooksSuccess(this.books);
}

final class SimilerbooksFailure extends SimilerbooksState {
  final String errorMessage;

  const SimilerbooksFailure(this.errorMessage);
}
