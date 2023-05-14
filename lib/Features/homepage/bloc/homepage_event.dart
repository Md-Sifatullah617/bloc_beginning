part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class HomepageInitialEvent extends HomepageEvent {}

class WishlistClickedEvent extends HomepageEvent {
    
}


class ProductCardClickedEvent extends HomepageEvent {}


class WishlistNavigateEvent extends HomepageEvent {}


class ProductCardNavigateEvent extends HomepageEvent {}