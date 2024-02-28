import 'package:bloc/bloc.dart';
import 'package:car_rental/src/core/data/dummy_data.dart';
import 'package:car_rental/src/core/models/brand.dart';
import 'package:equatable/equatable.dart';

part 'brand_event.dart';
part 'brand_state.dart';

class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  BrandsBloc() : super(BrandInitial()) {
    on<BrandsFetchEvent>((event, emit) {

      emit(const BrandsSuccessFetchState(DummyData.brands));

    });
  }
}
