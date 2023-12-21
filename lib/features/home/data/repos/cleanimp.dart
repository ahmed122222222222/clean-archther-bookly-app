import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/error/fauiler.dart';
import 'package:flutter_application_1/features/home/data/datasource/localdatasource/localdatasource.dart';
import 'package:flutter_application_1/features/home/data/datasource/remotedatasource/remotedatasource.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:flutter_application_1/features/home/domain/repo/homrepo.dart';


class cleanimp extends homerepo {
  @override
  final remoatedatasource remote;
  final localdatasource local;

  cleanimp(this.remote, this.local);
  Future<Either<Failure,List <bookentity>>> fatchbook() async{
try {
  List<bookentity> book= await local.fatchfutherbook();
  if(book.isEmpty)
  {
    return right(book);
  }
  List<bookentity> boo=await remote.fatchfutherbook();
  
  return right(boo);
  
  
  
} catch (e) {
  if (e is DioError) {
        return left(
          servfaliure.formdioerr(e),
        );
      }
      return left(
       servfaliure(
          e.toString(),
        ),
      );
} 
}

  @override
  Future<Either<Failure,List< bookentity>>> fatchnewestbook() async {
 try {
  List<bookentity> book= await local.fatchfutherbook();
  if(book.isEmpty)
  {
    return right(book);
  }
  List<bookentity> boo=await remote.fatchfutherbook();
  return right(boo);
  
  
  
} catch (e) {
  if (e is DioError) {
        return left(
          servfaliure.formdioerr(e),
        );
      }
      return left(
       servfaliure(
          e.toString(),
        ),
      );
}  
  }

}