// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      numOfProducts: json['numOfProducts'] as int?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'title': instance.title,
      'image': instance.image,
      'numOfProducts': instance.numOfProducts,
    };
