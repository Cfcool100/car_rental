part of 'products_bloc.dart';

sealed class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductClickedState extends ProductsState {
  final ProductsModel selectedItem;

  ProductClickedState({required this.selectedItem});
}
