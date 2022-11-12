import 'package:flutter/material.dart';
import 'package:ledning_app/products/bloc/bloc.dart';

/// {@template products_body}
/// Body of the ProductsPage.
///
/// Add what it does
/// {@endtemplate}
class ProductsBody extends StatelessWidget {
  /// {@macro products_body}
  const ProductsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return Text(state.customProperty);
      },
    );
  }
}
