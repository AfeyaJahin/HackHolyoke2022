part of 'products_bloc.dart';

abstract class ProductsEvent {
  const ProductsEvent();
}

/// {@template custom_products_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomProductsEvent extends ProductsEvent {}
