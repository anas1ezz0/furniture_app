import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductsModel {
  String? id;
  String? createdAt;
  String? title;
  int? price;
  String? category;
  String? image;
  String? subTitle;
  String? description;

  ProductsModel(
      {this.id,
      this.createdAt,
      this.title,
      this.price,
      this.category,
      this.image,
      this.subTitle,
      this.description});

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}
