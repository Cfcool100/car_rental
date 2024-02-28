part of 'brand_bloc.dart';

sealed class BrandsEvent extends Equatable {
  const BrandsEvent();

  @override
  List<Object> get props => [];
}

class BrandsFetchEvent extends BrandsEvent {
  const BrandsFetchEvent();
}

// class Bran