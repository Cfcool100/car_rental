import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental/src/core/data/dummy_data.dart';
import 'package:car_rental/src/core/models/models.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductFetchEvent>(_productFetchEvent);
    on<ProductSelectByCategoryEvent>(_productSelectByCategory);

    on<LikeButtonClickedEvent>(_likeButtonClickedEvent);
  }
  FutureOr<void> _productFetchEvent(
      ProductFetchEvent event, Emitter<ProductsState> emit) async {
    if (event.isLoad != null && event.isLoad == true) {
      emit(ProductsLoadState());
      await Future.delayed(const Duration(seconds: 2));
    }

    final result = DummyData.products;
    emit(ProductsSuccessState(result));
  }

  FutureOr<void> _productSelectByCategory(
      ProductSelectByCategoryEvent event, Emitter<ProductsState> emit) {
    final String searchValue = event.categoryLibelle;
    final result = DummyData.products;
    if (state is ProductsSuccessState) {
      emit(
        ProductsSuccessState((result)
            .where((element) => element.brand.libelle.contains(searchValue))
            .toList()),
      );
    }
  }

  FutureOr<void> _likeButtonClickedEvent(
      LikeButtonClickedEvent event, Emitter<ProductsState> emit) {
    if (state is ProductsSuccessState) {
      final products = (state as ProductsSuccessState).products;

      emit(ProductsSuccessState([
        for (var product in products)
          if (product.id == event.id)
            product.copyWith(isLiked: !product.isLiked)
          else
            product
      ]));

      // FIRST METHOD
      // final products = (state as ProductsSuccessState).products;

      // var existingProduct =
      //     products.indexWhere((element) => element.id == event.id);

      // if (existingProduct >= 0) {
      //   final productFound =
      //       products.firstWhere((element) => element.id == event.id);

      //   var productNew = productFound.copyWith(isLiked: !productFound.isLiked);

      //   products[existingProduct] = productNew;

      //   emit(ProductsSuccessState(products));
      // }
    }
  }
}
