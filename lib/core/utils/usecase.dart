import 'package:dartz/dartz.dart';

import 'error/fauiler.dart';

abstract class usecase <type,par>{
  Future<Either<Failure,type>>call([par parm]); 
}