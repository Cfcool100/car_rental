part of 'products_bloc.dart';

sealed class ProductsEvent {}

class ProductClickedEvent extends ProductsEvent {
  final ProductsModel selectedItem;

  ProductClickedEvent({required this.selectedItem});
}
