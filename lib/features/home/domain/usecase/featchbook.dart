import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/utils/error/fauiler.dart';

import 'package:flutter_application_1/features/home/domain/repo/homrepo.dart';

import '../../../../core/utils/usecase.dart';

 class fatchbook extends usecase{
  homerepo home;
  fatchbook({required this.home});
  
  @override
  Future<Either<Failure, dynamic>> call([parm]) async{
    return await home.fatchbook();
  }

}

