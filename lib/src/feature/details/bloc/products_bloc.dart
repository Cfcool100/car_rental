import 'package:bloc/bloc.dart';
import 'package:car_rental/src/feature/details/models/detail.models.dart';
import 'package:flutter/foundation.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc()
      : super(ProductClickedState(selectedItem: ProductsModel(img: null))) {
    on<ProductClickedEvent>((event, emit) {
      if (kDebugMode) {
        print(event.selectedItem.productName);
        print(event.selectedItem.img);
      }
      emit(ProductClickedState(selectedItem: event.selectedItem));
      if (kDebugMode) {
        print(event.selectedItem.productName);
        print(event.selectedItem.img);
      }
    });
  }
}
