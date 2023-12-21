import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:flutter_application_1/features/home/domain/repo/homrepo.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchbook.dart';



part 'newstbook_state.dart';

class NewstbookCubit extends Cubit<NewstbookState> {
  NewstbookCubit(this.f) : super(NewstbookInitial());

 final HomeRepo f;
  
 Future<void> getfuther ({int page=0})async {
  if(page ==0)
  
  {

  emit(Newstbookloading());
  }
  else {
    emit(Newstbookpagloading());
  }

 var res=await f.fetchNewsetBooks(
  page: page
 );
 res.fold((failure){{if(page==0){emit(Newstfaulier(failure.errmas));}
 else {
  emit(Newstpagfaulier());
 }
 }}, (books){emit(Newstbooksucess(books));});
 } 
}