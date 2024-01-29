part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {}

class ProductsInitial extends ProductsState {
  @override
  List<Object?> get props => [];
}

class ProductClickedState extends ProductsState {
  final ProductsModel selectedItem;

  ProductClickedState({required this.selectedItem});

  @override
  List<Object?> get props => [selectedItem];
}
