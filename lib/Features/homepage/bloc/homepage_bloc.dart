import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_beginning/Features/homepage/Models/homepage_data_product_model.dart';
import 'package:meta/meta.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageInitial()) {
    on<HomepageInitialEvent>(homepageInitialEvent);
    on<WishlistClickedEvent>(wishlistClickedEvent);
    on<ProductCardClickedEvent>(productCardClickedEvent);
    on<WishlistNavigateEvent>(wishlistNavigateEvent);
    on<ProductCardNavigateEvent>(productCardNavigateEvent);
  }

  FutureOr<void> homepageInitialEvent(HomepageInitialEvent event, Emitter<HomepageState> emit) {
  }

  FutureOr<void> wishlistClickedEvent(
      WishlistClickedEvent event, Emitter<HomepageState> emit) {
    print("Wishlist Clicked Event");
  }

  FutureOr<void> productCardClickedEvent(
      ProductCardClickedEvent event, Emitter<HomepageState> emit) {
    print("Product Card Clicked Event");
  }

  

  FutureOr<void> wishlistNavigateEvent(WishlistNavigateEvent event, Emitter<HomepageState> emit) {
    print("Wishlist Navigate Event");
  }

  FutureOr<void> productCardNavigateEvent(ProductCardNavigateEvent event, Emitter<HomepageState> emit) {
    print("Product Card Navigate Event");
  }
}
