part of 'fuether_cubit.dart';

abstract class FuetherState extends Equatable {
  const FuetherState();

  @override
  List<Object> get props => [];
}

class FuetherInitial extends FuetherState {}
class Fuetherloding  extends FuetherState {

}
class Fuetherpagloding  extends FuetherState {

}
// ignore: must_be_immutable
class Fuethersucess extends FuetherState {
  List<BookModel>booka;
  Fuethersucess(this.booka);
}
// ignore: must_be_immutable
class Fuetherfaulier extends FuetherState {String errmassss;
Fuetherfaulier(this.errmassss);}
// ignore: must_be_immutable
class Fuetherpagfaulier extends FuetherState {
}