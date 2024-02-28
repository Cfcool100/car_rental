import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/feature/home/bloc/search_bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final SearchBloc products = SearchBloc()..add(InitialFetchSearchEvent());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => products,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return SizedBox(
                  width: .4.sh,
                  child: AppSearchBar(
                    onChanged: (value) => context
                        .read<SearchBloc>()
                        .add(SearchChangedEvent(value)),
                  ),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state is SearchInitial) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final _foundedCard =
                  (state as SearchChangedState).filteredProducts;
              return ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    context.push('/${PageRoutes.detailPage}',
                        extra: _foundedCard[index].id);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 23.w,
                        right: 23.w,
                        bottom: 10.h,
                        top: _foundedCard[index] == 0 ? 25.h : 15.h),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
                    child: ListTile(
                      trailing: Image.asset(_foundedCard[index].images.first),
                      title: Text(
                        _foundedCard[index].libelle,
                        style: GoogleFonts.urbanist(color: AppColor.black),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  endIndent: .03.sh,
                  indent: .03.sh,
                  height: .5.h,
                ),
                itemCount: _foundedCard.length,
              );
            }
          },
        ),
      ),
    );
  }
}
