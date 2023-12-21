import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:hive/hive.dart';

abstract class localdatasource{
  List<bookentity>fatchfutherbook();
  List<bookentity>fatchnewstbook();
}
class localdatimp extends localdatasource{
  @override
  List<bookentity> fatchfutherbook() {
   var box= Hive.box<bookentity>(febox);
  return  box.values.toList();
  }

  @override
  List<bookentity> fatchnewstbook() {
   var box= Hive.box<bookentity>(newsbox);
  return  box.values.toList();
  }

}