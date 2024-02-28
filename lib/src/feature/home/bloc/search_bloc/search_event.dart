part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchChangedEvent extends SearchEvent{
  final String filteredProducts;

  const SearchChangedEvent(this.filteredProducts);

  @override
  List<Object> get props => [filteredProducts];
}

class InitialFetchSearchEvent extends SearchEvent{
  // final List<Product> products;

  // const InitialFetchSearchEvent(this.products);
}
