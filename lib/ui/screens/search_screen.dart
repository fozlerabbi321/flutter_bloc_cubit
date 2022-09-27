import 'package:flutter/material.dart';
import '../../utils/size_config.dart';
import '../shared/widgets/custom_text_filed.dart';
import 'widgets/search_infinity_view.dart';

final _searchController = TextEditingController();

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children:  [
            const SizedBox(height: 10,),
            CustomTextFiled(filedController: _searchController,),
            const SizedBox(height: 10,),
            const Expanded(child: SearchInfinityView()),
          ],
        ),
      ),
    );
  }
}
