part of 'brand_bloc.dart';

sealed class BrandsState extends Equatable {
  const BrandsState();
  
  @override
  List<Object> get props => [];
}

final class BrandInitial extends BrandsState {}

class BrandsSuccessFetchState extends BrandsState{
  final List<BrandModel> brands;

  const BrandsSuccessFetchState(this.brands);
}

class BrandsLoadingState extends BrandsState{}
