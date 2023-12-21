import 'package:hive/hive.dart';
  part 'bookenity.g.dart';
@HiveType(typeId: 1)
class bookentity{
@HiveField(0) 
final num rate;
@HiveField(1)
final String img;
@HiveField(2)
final String titel;
@HiveField(3)
final num price;
@HiveField(4)
final String authoname;
@HiveField(5)
final String bookid;

  bookentity({required this.rate,required this.img, required this.titel,required this.price,required this.authoname,required this.bookid});
}