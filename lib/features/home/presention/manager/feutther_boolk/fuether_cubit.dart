import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:flutter_application_1/features/home/domain/repo/homrepo.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchnewstbookusecase.dart';






part 'fuether_state.dart';

class FuetherCubit extends Cubit<FuetherState> {
  FuetherCubit(this.f) : super(FuetherInitial());
 final HomeRepo f;
  
 Future<void> fatchfuterbook ({int page=0})async {
  if(page ==0)
  {
    emit(Fuetherloding());
  }
  else
  {emit(Fuetherpagloding());}
 var res=await f.fetchFeaturedBooks(page: page);
 print(res.toString());
 res.fold((failure){
  if(page ==0)
  {emit(Fuetherfaulier(failure.errmas));}
  else{
    emit(Fuetherpagfaulier());
  }
  }, (books){emit(Fuethersucess(books));});
 } 
}
