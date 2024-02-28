part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ProductFetchEvent extends ProductsEvent {
  final bool? isLoad;

  ProductFetchEvent([this.isLoad]);
}

class ProductSelectByCategoryEvent extends ProductsEvent {
  final String categoryLibelle;

  ProductSelectByCategoryEvent(this.categoryLibelle);
}

class LikeButtonClickedEvent extends ProductsEvent {
  final int id;

  LikeButtonClickedEvent(this.id);
}
