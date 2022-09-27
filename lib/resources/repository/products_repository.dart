
import '../../models/rp_products_model.dart';
import '../../utils/constants.dart';
import '../api_provider/products_provider.dart';

class ProductsRepository {
  final _provider = ProductsProvider();
  Future<List<ProductList>> fetchProductList({
    int offset = 10,
    int limit = 20,
    String? search,
  }) {
    var url = '${Constants.kProductListUrl}?limit=$limit&offset=$offset&';
    if(search != null){
      url += 'search=$search&';
    }
    return _provider.fetchProductList(url);
  }

}

class NetworkError extends Error {}
