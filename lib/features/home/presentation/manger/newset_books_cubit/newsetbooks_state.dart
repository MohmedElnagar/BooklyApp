part of 'newsetbooks_cubit.dart';

sealed class NewsetbooksState extends Equatable {
  const NewsetbooksState();

  @override
  List<Object> get props => [];
}

final class NewsetbooksInitial extends NewsetbooksState {}

final class NewsetbooksLoading extends NewsetbooksState {}

final class NewsetbooksSucsses extends NewsetbooksState {
  final List<BookModel> books;

  const NewsetbooksSucsses(this.books);
}

final class NewsetbooksFailure extends NewsetbooksState {
  final String errorMessage;

  const NewsetbooksFailure(this.errorMessage);
}
