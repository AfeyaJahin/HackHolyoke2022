import 'package:flutter/material.dart';
import 'package:lending_app/products/products.dart';
import 'package:lending_app/products/view/shopping_cart.dart';

import '../view/confirm_order.dart';

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
        if (state is ProductsInitial) {
          return const ProductSellPage();
        } else if (state is CartState) {
          return const ShoppingCart();
        } else if (state is CheckOutState) {
          return const ConfirmOrder();
        }
        return const ProductSellPage();
      },
    );
  }
}
