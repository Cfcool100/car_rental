part of 'products_bloc.dart';

sealed class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsSuccessState extends ProductsState {
  final List<Product> products;

  ProductsSuccessState(this.products);
}

class ProductsLoadState extends ProductsState {}

class ProductsFailure extends ProductsState {}

class LikeButtonClickedState extends ProductsState {
  final bool isLike;

  LikeButtonClickedState({this.isLike = false});
}
