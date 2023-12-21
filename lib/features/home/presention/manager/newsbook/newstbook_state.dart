part of 'newstbook_cubit.dart';

abstract class NewstbookState extends Equatable {
  const NewstbookState();

  @override
  List<Object> get props => [];
}

class NewstbookInitial extends NewstbookState {}
class Newstbookloading extends NewstbookState {}
class Newstbookpagloading extends NewstbookState {}
// ignore: must_be_immutable
class Newstbooksucess extends NewstbookState {
  List<BookModel>bok;
  Newstbooksucess(this.bok);
}
// ignore: must_be_immutable
class Newstfaulier extends NewstbookState {String errmassss;
Newstfaulier(this.errmassss);}
class Newstpagfaulier extends NewstbookState {}

