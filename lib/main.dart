import 'package:flutter/material.dart';
import 'package:flutter_task/utils/constants.dart';
import 'theme/light_theme.dart';
import 'ui/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.kAppName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SearchScreen(),
    );
  }
}
