import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'search_infinity_card.dart';

final _scrollController = ScrollController();

class SearchInfinityView extends StatelessWidget {
  const SearchInfinityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: MasonryGridView.count(
        controller: _scrollController,
        crossAxisCount: 2,
        shrinkWrap: true,
        itemCount: 10,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return SearchInfinityCard(
            index: index
          );
        },
      ),
    );
  }
}
