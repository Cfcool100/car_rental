part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {}

class ProductClickedEvent extends ProductsEvent {
  final ProductsModel selectedItem;

  ProductClickedEvent({required this.selectedItem});

  @override
  List<Object?> get props => [selectedItem];
}
