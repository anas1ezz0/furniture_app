// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      subTitle: json['subTitle'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'image': instance.image,
      'subTitle': instance.subTitle,
      'description': instance.description,
    };
