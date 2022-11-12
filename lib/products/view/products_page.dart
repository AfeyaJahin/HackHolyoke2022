import 'package:flutter/material.dart';
import 'package:lending_app/products/bloc/bloc.dart';
import 'package:lending_app/products/widgets/products_body.dart';

/// {@template products_page}
/// A description for ProductsPage
/// {@endtemplate}
class ProductsPage extends StatelessWidget {
  /// {@macro products_page}
  const ProductsPage({Key? key}) : super(key: key);

  /// The static route for ProductsPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ProductsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc(),
      child: const Scaffold(
        body: ProductsView(),
      ),
    );
  }
}

/// {@template products_view}
/// Displays the Body of ProductsView
/// {@endtemplate}
class ProductsView extends StatelessWidget {
  /// {@macro products_view}
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProductsBody();
  }
}
