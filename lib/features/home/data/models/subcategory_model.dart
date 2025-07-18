import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SubcategoryModel {
  final int? id;
  final String name;
  final String featuredImage;
  final int categoryId;
  final int placeItemsCount;
  SubcategoryModel({
    required this.name,
    required this.categoryId,
    required this.featuredImage,
    required this.placeItemsCount,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'categoryId': categoryId,
      'featuredImage': featuredImage,
    };
  }

  factory SubcategoryModel.fromMap(Map<String, dynamic> map) {
    return SubcategoryModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      categoryId: map['categoryId'] as int,
      featuredImage: map['featuredImage'] as String,
      placeItemsCount: map['_count']['placeItems'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubcategoryModel.fromJson(String source) =>
      SubcategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
