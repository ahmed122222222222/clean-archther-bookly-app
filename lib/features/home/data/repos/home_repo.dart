
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';

import '../../../../core/utils/error/fauiler.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks({int page = 0 } );
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks({int page = 0});
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
