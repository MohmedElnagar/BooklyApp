part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoading extends FeaturedBookState {}

final class FeaturedBookSucces extends FeaturedBookState {
  final List<BookModel> book;

  const FeaturedBookSucces(this.book);
}

final class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;

  const FeaturedBookFailure(this.errorMessage);
}
