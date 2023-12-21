 import 'package:dartz/dartz.dart';

import '../../../../core/utils/error/fauiler.dart';
import '../../../../core/utils/usecase.dart';
import '../repo/homrepo.dart';

class fatchnewstcase extends usecase{
  homerepo home;
 fatchnewstcase({required this.home});
  
  @override
  Future<Either<Failure, dynamic>> call([parm]) async{
    return await home.fatchnewestbook();
  }

}
