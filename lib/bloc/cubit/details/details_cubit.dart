import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/rp_product_details_model.dart';
import '../../../models/rp_products_model.dart';
import '../../../resources/repository/products_repository.dart';
import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitialState());

  static DetailsCubit get(context) => BlocProvider.of(context);

  final ProductsRepository productsRepository = ProductsRepository();
  RpProductDetailsModel? rpProductDetails;
  ProductList productDetails = ProductList();
  bool _isLoading = false;
  //Encapsulation
  bool get isLoading => _isLoading;

  getProductDetails(String productSlug) async {
    rpProductDetails = null;
    productDetails = ProductList();
    _isLoading = true;

    try {
      final data = await productsRepository.fetchProductDetails(productSlug);
      rpProductDetails = data;
     if(rpProductDetails?.status == 'success'){
       if(rpProductDetails?.data != null){
         productDetails = rpProductDetails!.data!;
       }
     }else{
       rpProductDetails = null;
       productDetails = ProductList();
     }
      _isLoading = false;
      emit(DetailsGetState());
    } on NetworkError {
      //emit(const DetailsError("Failed to fetch data. is your device online?"));
    }
  }
  

}