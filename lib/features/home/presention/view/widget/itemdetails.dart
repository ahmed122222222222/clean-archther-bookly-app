import 'package:flutter/material.dart';

import 'customlistviewitem.dart';

class itemdetails extends StatelessWidget {
  const itemdetails({
    super.key,
    required this.img
  });
final String img;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * .4,
        child:  Padding(
          padding:const EdgeInsets.only(top: 33.2),
          child: Listviewitem(url: img??"",),
        ));
  }
}
