import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_task/bloc/cubit/search/search_state.dart';
import '../../../shared/shared/custom_loader.dart';
import '../../../shared/shared/not_found.dart';
import 'search_infinity_card.dart';

class SearchInfinityView extends StatefulWidget {
  final String? searchKey;

  const SearchInfinityView({Key? key, this.searchKey}) : super(key: key);

  @override
  State<SearchInfinityView> createState() => _SearchInfinityViewState();
}

class _SearchInfinityViewState extends State<SearchInfinityView> {
  final _scrollController = ScrollController();
  final filterCubit = SearchCubit();

  @override
  void initState() {
    _scrollController.addListener(addProducts);
    super.initState();
  }

  void addProducts() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      log('===========>>>work');
      context.read<SearchCubit>().changeOffset();
      context.read<SearchCubit>().showBottomLoader();

      getProducts();
    }
  }

  void getProducts({bool reload = false}) async {
    context
        .read<SearchCubit>()
        .getProductList(reload, searchKey: widget.searchKey);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        SearchCubit cubit = SearchCubit.get(context);
        return Container(
          child: cubit.isProductLoading
              ? const CustomLoader()
              : cubit.productList.isEmpty
                  ? const NotFound()
                  : Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: MasonryGridView.count(
                              controller: _scrollController,
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              itemCount: cubit.productList.length,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              padding: EdgeInsets.zero,
                              itemBuilder: (BuildContext context, int index) {
                                return SearchInfinityCard(
                                    product: cubit.productList[index],
                                    index: index);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          child: cubit.isLoadingMore
                              ? const CustomLoader()
                              : const SizedBox(),
                        )
                      ],
                    ),
        );
      },
    );
  }
}
