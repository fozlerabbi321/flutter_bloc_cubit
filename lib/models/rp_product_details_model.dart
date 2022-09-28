import 'package:flutter_task/models/rp_products_model.dart';

class RpProductDetailsModel {
  RpProductDetailsModel({
      String? status, 
      int? statusCode, 
      ProductList? data,
      String? error,}){
    _status = status;
    _statusCode = statusCode;
    _data = data;
    _error = error;
}

  RpProductDetailsModel.fromJson(dynamic json) {
    _status = json['status'];
    _statusCode = json['statusCode'];
    _data = json['data'] != null ? ProductList.fromJson(json['data']) : null;
    _error = json['error'];
  }
  String? _status;
  int? _statusCode;
  ProductList? _data;
  String? _error;

  String? get status => _status;
  int? get statusCode => _statusCode;
  ProductList? get data => _data;
  String? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['statusCode'] = _statusCode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['error'] = _error;
    return map;
  }

}