import 'package:bloc_beginning/Features/Whislist/UI/wishlist.dart';
import 'package:bloc_beginning/Features/homepage/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomepageBloc homepageBloc = HomepageBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomepageBloc, HomepageState>(
      bloc: homepageBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomenavigateToWishlistPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Wishlist()));
        } else if (state is HomenavigateToProductCardPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Card()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Bloc Beginning'),
            backgroundColor: Colors.teal,
            actions: [
              IconButton(
                  onPressed: () {
                    homepageBloc.add(WishlistNavigateEvent());
                  },
                  icon: const Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    homepageBloc.add(ProductCardNavigateEvent());
                  },
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          ),
        );
      },
    );
  }
}
