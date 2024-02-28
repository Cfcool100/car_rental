part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {

  const ProductsState();

  @override
  List<Object> get props => [];

}

class ProductsInitial extends ProductsState {}

class ProductsSuccessState extends ProductsState {
  final List<Product> products;

  const ProductsSuccessState(this.products);
}

class ProductsLoadState extends ProductsState {}

class ProductsFailure extends ProductsState {}

class LikeButtonClickedState extends ProductsState {
  final bool isLike;

  const LikeButtonClickedState({this.isLike = false});
}
