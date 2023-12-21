import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';

import 'bestselleritemlisstview.dart';

class textwrite extends StatelessWidget {
  const textwrite({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 43,
        ),
        Center(
            child: Text(bookModel.volumeInfo?.title??"",
                style: styels.textStyle20.copyWith(fontFamily: 'ahmed'))),
        const SizedBox(
          height: 4,
        ),
        Center(
            child: Text(
          bookModel.volumeInfo?.description!.substring(0,100)??"",
          style:
              styels.textStyle18.copyWith(color: Colors.white.withOpacity(.7)),
        )),
        const SizedBox(
          height: 14,
        ),
         Iconss(
          mainAxisAlignment: MainAxisAlignment.center,
          rat: 5,
          count: 50,
        )
      ],
    );
  }
}
