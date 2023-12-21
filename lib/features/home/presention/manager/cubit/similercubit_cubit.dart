import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchbook.dart';


import '../../../data/repos/home_repo.dart';
import '../newsbook/newstbook_cubit.dart';

part 'similercubit_state.dart';

class SimilercubitCubit extends Cubit<SimilercubitState> {
  SimilercubitCubit(this.f) : super(SimilercubitInitial());
   final HomeRepo f;
  
 Future<void> getfuther ()async {
  emit(Similercubitloading());
 var res=await f.fetchSimilarBooks(category: "programing");
 res.fold((failure){emit(Similercubittfaulier(err:failure.errmas, ));}, (books){emit(Similercubitsucess(list: books ));});
 } 
}
