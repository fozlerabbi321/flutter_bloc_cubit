import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/cart_model.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial([],0));

  addProduct(String slug) {
    List<CartModel> cartItemList = state.cartItem;
    int quantity = 0;
    for (var element in cartItemList) {
      if (element.slug == slug) {
        quantity = element.quantity;
        cartItemList.remove(CartModel(quantity: quantity, slug: slug));
      }
    }
    cartItemList.add(CartModel(quantity: quantity + 1, slug: slug));
    emit(CartAdd(cartItemList,state.totalProduct+1));
  }

  removeProduct(String slug) {
    List<CartModel> cartItemList = state.cartItem;
    int quantity = 1;
    for (var element in cartItemList) {
      if (element.slug == slug) {
        quantity = element.quantity;
        cartItemList.remove(CartModel(quantity: quantity, slug: slug));
      }
    }
    cartItemList.add(CartModel(quantity: quantity - 1, slug: slug));
    emit(CartAdd(cartItemList,state.totalProduct-1));
  }

  int getQuantity(String slug) {
    List<CartModel> cartItemList = state.cartItem;
    int aa = 0;
    for (var element in cartItemList) {
      if (element.slug == slug) {
        aa = element.quantity;
      }
    }
    return aa;
  }

  
}
