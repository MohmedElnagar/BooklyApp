import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchNewsBooks();
  Future<Either<Failure, List<BookModel>>> featchfeaturesBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String catgry});
}
