part of 'products_bloc.dart';

abstract class ProductsEvent {
  const ProductsEvent();
}

class AddProductEvent extends ProductsEvent {
  const AddProductEvent();
}

class RemoveProductEvent extends ProductsEvent {
  const RemoveProductEvent();
}

class ShoppingCartEvent extends ProductsEvent {
  const ShoppingCartEvent();
}

class GoToCheckOutEvent extends ProductsEvent {
  const GoToCheckOutEvent();
}

class FinishEvent extends ProductsEvent {
  const FinishEvent();
}
