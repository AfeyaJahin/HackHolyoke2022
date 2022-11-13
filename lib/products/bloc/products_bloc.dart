import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const ProductsInitial()) {
    on<AddProductEvent>(_onAddProductEvent);
    on<RemoveProductEvent>(_onRemoveProductEvent);
    on<ShoppingCartEvent>(_onShoppingCartEvent);
    on<GoToCheckOutEvent>(_onGoToCheckOutEvent);
    on<FinishEvent>(_onFinishEvent);
  }

  FutureOr<void> _onAddProductEvent(
    AddProductEvent event,
    Emitter<ProductsState> emit,
  ) {
    // TODO: Add Logic
  }

  FutureOr<void> _onRemoveProductEvent(
    RemoveProductEvent event,
    Emitter<ProductsState> emit,
  ) {}

  FutureOr<void> _onShoppingCartEvent(
    ShoppingCartEvent event,
    Emitter<ProductsState> emit,
  ) {
    emit(const CartState());
  }

  FutureOr<void> _onGoToCheckOutEvent(
    GoToCheckOutEvent event,
    Emitter<ProductsState> emit,
  ) {
    emit(const CheckOutState());
  }

  FutureOr<void> _onFinishEvent(
    FinishEvent event,
    Emitter<ProductsState> emit,
  ) {
    emit(const ProductsInitial());
  }
}
