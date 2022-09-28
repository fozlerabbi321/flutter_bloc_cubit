import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/utils/constants.dart';
import 'bloc/cubit/search/search_cubit.dart';
import 'theme/light_theme.dart';
import 'ui/screens/search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchCubit()..getProductList(false),
        ),
      ],
      child: MaterialApp(
        title: Constants.kAppName,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const SearchScreen(),
      ),
    );
  }
}
