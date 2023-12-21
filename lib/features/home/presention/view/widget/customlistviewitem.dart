import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/core/utils/imagedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:go_router/go_router.dart';

class Listviewitem extends StatelessWidget {
  const Listviewitem({Key? key,required this.url}) : super(key: key);
 final String url ;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
    aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(imageUrl:url,
        fit: BoxFit.fill,
        
        )
        ),
    );
  }
}
