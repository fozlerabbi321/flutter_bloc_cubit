import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/rp_products_model.dart';
import '../../../resources/repository/products_repository.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);
  
  final ProductsRepository productsRepository = ProductsRepository();
  bool _isLoadingMore = false;
  bool _isProductLoading= true;
  List<ProductList> _productList = [];
  int _offset = 10;
  final int _limit = 10;
  bool get isProductLoading => _isProductLoading;
  bool get isLoadingMore => _isLoadingMore;
  int get offset => _offset;
  int get limit => _limit;
  List<ProductList> get productList => _productList;

  void getProductList(bool reload,{
    String? searchKey,}) async {

    if(reload){
      _productList = [];
      _isProductLoading = true;
      emit(SearchGetState());
    }


    try {
      final posts = await productsRepository.fetchProductList(
        offset: offset,
        limit: limit,
        search: searchKey,
      );
      if(_productList.isEmpty){
        _productList.clear();
        SearchGetState();
        log('clear products');
        if(posts.isNotEmpty){
          _productList.addAll(posts);
          log('add products: ${jsonEncode(_productList)}');
        }
      }else{
        if(posts.isNotEmpty){
          for(var product in posts){
            _productList.add(product);
            log('add products: ${jsonEncode(_productList)}');
          }
        }
      }
      _isProductLoading = false;
      _isLoadingMore = false;
      emit(SearchGetState());
    } on NetworkError {
      //emit(const DetailsError("Failed to fetch data. is your device online?"));
    }
  }
  void changeOffset() {
    _offset += limit;
    emit(SearchGetState());
  }
  void resetOffset() {
    _offset = 10;
    emit(SearchGetState());
  }
  void showBottomLoader() {
    _isLoadingMore = true;
    emit(SearchGetState());
  }
}