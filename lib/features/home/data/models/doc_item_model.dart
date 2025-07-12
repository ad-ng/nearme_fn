// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:nearme_fn/features/auth/data/models/user_model.dart';

///
class DocItemModel {
  final int id;
  final String title;
  final String description;
  final String summary;
  final int authorId;
  final UserModel author;
  final int categoryId;
  final String location;
  final String featuredImg;
  final String createdAt;
  DocItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.summary,
    required this.authorId,
    required this.author,
    required this.categoryId,
    required this.location,
    required this.featuredImg,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'summary': summary,
      'authorId': authorId,
      'author': author.toMap(),
      'categoryId': categoryId,
      'location': location,
      'featuredImg': featuredImg,
      'createdAt': createdAt,
    };
  }

  factory DocItemModel.fromMap(Map<String, dynamic> map) {
    return DocItemModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      summary: map['summary'] as String,
      authorId: map['authorId'] as int,
      author: UserModel.fromMap(map['author'] as Map<String, dynamic>),
      categoryId: map['categoryId'] as int,
      location: map['location'] as String,
      featuredImg: map['featuredImg'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DocItemModel.fromJson(String source) =>
      DocItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
