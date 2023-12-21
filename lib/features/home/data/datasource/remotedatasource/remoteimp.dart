import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/core/utils/api.dart';
import 'package:flutter_application_1/features/home/data/datasource/remotedatasource/remotedatasource.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:hive/hive.dart';

import '../../../../../core/utils/func/function.dart';

class remimp extends remoatedatasource{
  final api apiService;

  remimp(this.apiService);
  @override
  Future<List<bookentity>> fatchfutherbook()async {
 
 var respo=await apiService.get(url: "volumes?Filtering=free-ebooks&q=machine learning");
 List<bookentity>book=[];
 for (var element in respo["item"] ) {
   book.add(BookModel.fromJson(element));
 }
savebox(book,febox);

 return book;
  }


  @override
  Future<List<bookentity>> fatchnewstbook()async {
 
 var data=await apiService.get(url: "volumes?Filtering=free-ebooks&q=machine learning");
 List<bookentity>book=[];
for (var item in data['items']) {
        try {
          book.add(BookModel.fromJson(item));
        } catch (e) {
          book.add(BookModel.fromJson(item));
        }
      }
 savebox(book,newsbox);
 return book;
  }

}