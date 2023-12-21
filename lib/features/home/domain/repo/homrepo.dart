import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/utils/error/fauiler.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';

abstract class homerepo{
Future<Either<Failure,List<bookentity>>>fatchbook();
Future<Either<Failure,List <bookentity>>>fatchnewestbook();

}
