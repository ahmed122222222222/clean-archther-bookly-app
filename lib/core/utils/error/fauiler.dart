import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
abstract class Failure{
  String errmas;
  Failure( this.errmas);
}
class servfaliure extends Failure{
  servfaliure(super.errmas);
   
factory servfaliure.formdioerr(DioError dio ){
switch (dio.type) {
  
  case DioExceptionType.connectionTimeout:
   return servfaliure("connectionTimeout");
  case DioExceptionType.sendTimeout:
   return servfaliure("send time out ");
  case DioExceptionType.receiveTimeout:
    return servfaliure("recive time out");
  case DioExceptionType.badCertificate:
  return servfaliure("badCertificate");
  case DioExceptionType.badResponse:
   return servfaliure.fromresp(dio.response!.statusCode!, dio.response!.data);
  case DioExceptionType.cancel:
  return servfaliure("cansel");
  case DioExceptionType.connectionError:
    return servfaliure("connection fauiler ");
   
  case DioExceptionType.unknown:
  return servfaliure("please try later agine");
  
}
}
factory servfaliure.fromresp(int stutscode,dynamic response)
{
  if(stutscode==400 || stutscode==401||stutscode==403)
  {
    return servfaliure(response['error']['message']);
  }
  else if(stutscode==404) 
  {
    return servfaliure("not found");

  }
  else if(stutscode==500)
  {
    return servfaliure("server conrction error");
  }
  else {
    return servfaliure("try agein");
  }
}
}

