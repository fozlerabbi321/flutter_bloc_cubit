part of 'cart_cubit.dart';

abstract class CartState {
  List<CartModel> cartItem;
  int totalProduct; 
  CartState(this.cartItem,this.totalProduct);
}

class CartInitial extends CartState {
  List<CartModel> cartItem;
  @override
  int totalProduct;
  CartInitial(this.cartItem,this.totalProduct) : super(cartItem,totalProduct);
}

class CartAdd extends CartState {
  List<CartModel> cartItem;
  int totalProduct;
  CartAdd(this.cartItem,this.totalProduct) : super(cartItem,totalProduct);
}
