import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
///
class CategoryModel {
  int? id;
  String name;
  bool isDoc;
  CategoryModel({this.id, required this.name, required this.isDoc});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'isDoc': isDoc};
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      isDoc: map['isDoc'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
