import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/appbarbooklydetails.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/listviewbook.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/textinbookdetalis.dart';
import 'bootom.dart';
import 'itemdetails.dart';
class bodybookdetalies extends StatelessWidget {
  const bodybookdetalies({Key? key, required this.bookModel}) : super(key: key);
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const appbarbooklydetails(),
         itemdetails( img:bookModel.volumeInfo?.imageLinks?.thumbnail??"" ,),
       textwrite(bookModel: bookModel,),
         bootom(bookModel: bookModel,),
       const SizedBox(
          height: 49,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: styels.textStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              )),
        ),
const SizedBox(height: 16,),
 const ListViewBook(),

 const SizedBox(height: 20,)     
       
      ],
    );
  }
}
