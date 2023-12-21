import 'package:dio/dio.dart';
class api {
  String baseurl="https://www.googleapis.com/books/v1/";
  final Dio dio;
  api(this.dio);
  Future<Map<String,dynamic>> get ({required url})
  async{
   var response =await dio.get('$baseurl$url'  );
   return response.data;
      

  }
}
