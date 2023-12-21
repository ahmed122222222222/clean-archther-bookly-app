import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presention/manager/cubit/similercubit_cubit.dart';
import 'package:flutter_application_1/features/home/presention/view/widget/bodybooklydetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookddetales extends StatelessWidget {
  const Bookddetales({Key? key, required this.bookModel, }) : super(key: key);
 final BookModel bookModel;
  @override
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: bodybookdetalies(bookModel:bookModel
     ,),
    );
  }
}
