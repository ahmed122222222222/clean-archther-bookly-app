
  import 'package:hive/hive.dart';

import '../../../const.dart';
import '../../../features/home/domain/entity/bookenity.dart';

void savebox(List<bookentity> book,boxname) {
    var box= Hive.box<bookentity>(boxname);
    box.addAll(book);
  }