import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
///
class SubcategoryModel {
  ///
  int? id;

  ///
  String name;

  ///
  int categoryId;
  SubcategoryModel({required this.name, required this.categoryId, this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'categoryId': categoryId};
  }

  factory SubcategoryModel.fromMap(Map<String, dynamic> map) {
    return SubcategoryModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      categoryId: map['categoryId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubcategoryModel.fromJson(String source) =>
      SubcategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
