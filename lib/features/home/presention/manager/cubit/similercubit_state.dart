part of 'similercubit_cubit.dart';

abstract class SimilercubitState extends Equatable {
  const SimilercubitState();

  @override
  List<Object> get props => [];
}

class SimilercubitInitial extends SimilercubitState {}

class Similercubitloading extends SimilercubitState {}

// ignore: must_be_immutable
class Similercubitsucess extends SimilercubitState {List<BookModel>list;
Similercubitsucess({required this.list});
}

class Similercubittfaulier extends SimilercubitState {final String err;
Similercubittfaulier({required this.err});
}
