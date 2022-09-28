import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../models/rp_product_details_model.dart';
import '../../models/rp_products_model.dart';
class ProductsProvider {


  Future<List<ProductList>> fetchProductList(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url),);
      log('url - $url  response body ==== ${response.body}');
      if (response.statusCode == 200) {
        RpProductsModel data = RpProductsModel.fromJson(json.decode(utf8.decode(response.bodyBytes)));
        return data.data!.products?.productList ?? [];
      } else {
        return [];
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return [];
    }
  }
  Future<RpProductDetailsModel> fetchProductDetails(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url),);
      log('url - $url  response body ==== ${response.body}');
      if (response.statusCode == 200) {
        return RpProductDetailsModel.fromJson(json.decode(utf8.decode(response.bodyBytes)));
      } else {
        return RpProductDetailsModel();
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return RpProductDetailsModel();
    }
  }
}
