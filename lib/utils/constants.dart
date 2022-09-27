
import 'package:flutter/material.dart';

class Constants{
  //app name
  static const String kAppName = "Flutter Task";
  static const String kCurrency = '৳';

  //api end point
  static const String kBaseUrl = 'https://panel.supplyline.network/api';
  static const String kProductListUrl = '$kBaseUrl/product/search-suggestions';


  void showCustomSnackBar(BuildContext context, String message, {bool isError = true}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: isError ? Colors.red : Colors.green,
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        elevation: 5.0,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        duration: const Duration(seconds: 2),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }
}