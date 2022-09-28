import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_task/utils/constants.dart';
import '../../../utils/assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';
import '../../shared/widgets/custom_text_filed.dart';
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
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomTextFiled(
              filedController: _searchController,
              actionType: TextInputAction.search,
              onConfirm: (String? searchKey) {
                if (_searchController.text.isEmpty) {
                  Constants()
                      .showCustomSnackBar(context, 'your search key is empty!');
                } else {
                  context.read<SearchCubit>().resetOffset();
                  context.read<SearchCubit>().getProductList(true, searchKey: searchKey);
                }
              },
              hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  AssetsImage.search,
                  color: kIconColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: SearchInfinityView(
              searchKey: _searchController.text,
            )),
          ],
        ),
      ),
    );
  }
}
