import 'package:flutter/material.dart';
import 'package:furniture_app/models/product_model.dart';

@immutable
abstract class MyProductState {}

class MyProductInitial extends MyProductState {}

class GetProductData extends MyProductState {
  final List<ProductsModel> productData;

  GetProductData(this.productData);
}
