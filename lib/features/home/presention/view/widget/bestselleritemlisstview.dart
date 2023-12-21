import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/core/utils/imagedata.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:flutter_application_1/features/home/presention/manager/cubit/similercubit_cubit.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/customlistviewitem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Bestselleritem extends StatelessWidget {
  const Bestselleritem({Key? key, required this.bookly }) : super(key: key);
 final BookModel bookly;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        /*GestureDetector(
                  ,*/
        onTap: () {
        
          GoRouter.of(context).push(router.kBookDetailsView,extra:bookly );
          BlocProvider.of<SimilercubitCubit>(context).getfuther();
        },
        child: Row(
          children: [
            SizedBox(
              height: 100,
              child:Listviewitem(url:bookly.volumeInfo?.imageLinks?.thumbnail??"http://books.google.com/books/content?id=y01KEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api" ,), 
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookly.titel,
                        style: styels.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookly.authoname,
                    style: styels.textStyle14.copyWith(color: Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   bookra(rating :bookly.volumeInfo?.averageRating??0,cou: bookly.volumeInfo?.pageCount??0,)
                ],
              ),
            )
          ],
        ),
      );
        }
}
class bookra extends StatelessWidget {
  const bookra({Key? key,required this.rating,required this.cou}) : super(key: key);
final num rating ;
final num cou;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "free",
          style: styels.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.montserrat().fontFamily),
        ),
        const SizedBox(
          width: 44.3,
        ),
        Iconss(rat:rating,count: cou,)
      ],
    );
  } 
}

class Iconss extends StatelessWidget {
  const Iconss({Key? key, this.mainAxisAlignment = MainAxisAlignment.start,required this.rat,required this.count})
      : super(key: key);
      final num rat;
      final num count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          '$rat',
          style: styels.textStyle14,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          "$count",
          style: styels.textStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
