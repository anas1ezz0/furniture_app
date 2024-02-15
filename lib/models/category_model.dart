import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  String? id;
  String? createdAt;
  String? title;
  String? image;
  int? numOfProducts;

  CategoryModel(
      {this.id, this.createdAt, this.title, this.image, this.numOfProducts});

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
