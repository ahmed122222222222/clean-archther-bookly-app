import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';

import '../../../../core/utils/error/fauiler.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<bookentity>>> fetchNewsetBooks();
  Future<Either<Failure, List<bookentity>>> fetchFeaturedBooks();
  
}
