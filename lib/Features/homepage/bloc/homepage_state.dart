part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

abstract class HomeActionState extends HomepageEvent {}

class HomepageInitial extends HomepageState {}

class HomeLoadingState extends HomepageState {}

class SuccessHomeLoadingState extends HomepageState {
  final List<ProductDataModel> products;

  SuccessHomeLoadingState(this.products);
}

class ErrorHomeLoadingState extends HomepageState {}

class HomenavigateToWishlistPageActionState extends HomeActionState {}

class HomenavigateToProductCardPageActionState extends HomeActionState {}
