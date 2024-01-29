import 'package:bloc/bloc.dart';
import 'package:car_rental/src/feature/details/models/detail.models.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc():super(ProductsInitial());

  ProductsState get initialState => ProductsInitial();

  Stream<ProductsState> mapEventToState(ProductsEvent event) async* {
    if (event is ProductClickedEvent) {
      yield ProductClickedState(selectedItem: event.selectedItem);
    }
  }
}
