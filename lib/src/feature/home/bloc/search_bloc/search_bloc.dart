import 'package:bloc/bloc.dart';
import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/core/data/dummy_data.dart';
import 'package:equatable/equatable.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchChangedState([])) {
    on<SearchChangedEvent>((event, emit) {
      List<Product> results = [];

      if (event.filteredProducts.trim().isEmpty) {
        emit(SearchChangedState(DummyData.products));
      } else {
        results = DummyData.products
            .where((car) => car.libelle
                .toLowerCase()
                .contains(event.filteredProducts.toLowerCase()))
            .toList();
        emit(SearchChangedState(results));
      }
    });

    on<InitialFetchSearchEvent>((event, emit) {
      emit(SearchChangedState(DummyData.products));
    });
  }
}
