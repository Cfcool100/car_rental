part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
  
  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

class SearchChangedState extends SearchState{
  final List<Product> filteredProducts;

  const SearchChangedState(this.filteredProducts);

  @override
  List<Object> get props => [filteredProducts];
}