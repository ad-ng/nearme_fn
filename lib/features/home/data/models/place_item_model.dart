import 'dart:convert';
import 'package:nearme_fn/features/home/data/models/subcategory_model.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlaceItemModel {
  int id;
  String title;
  String description;
  String workingHours;
  String location;
  List<String> placeImg;
  String businessEmail;
  String phoneNumber;
  int subCategoryId;
  SubcategoryModel subCategory;
  PlaceItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.workingHours,
    required this.location,
    required this.placeImg,
    required this.businessEmail,
    required this.phoneNumber,
    required this.subCategoryId,
    required this.subCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'workingHours': workingHours,
      'location': location,
      'placeImg': placeImg,
      'businessEmail': businessEmail,
      'phoneNumber': phoneNumber,
      'subCategoryId': subCategoryId,
      'subCategory': subCategory.toMap(),
    };
  }

  factory PlaceItemModel.fromMap(Map<String, dynamic> map) {
    return PlaceItemModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      workingHours: map['workingHours'] as String,
      location: map['location'] as String,
      placeImg: List<String>.from(map['placeImg'] as List<dynamic>),
      businessEmail: map['businessEmail'] as String,
      phoneNumber: map['phoneNumber'] as String,
      subCategoryId: map['subCategoryId'] as int,
      subCategory: SubcategoryModel.fromMap(
        map['subCategory'] as Map<String, dynamic>,
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceItemModel.fromJson(String source) =>
      PlaceItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
