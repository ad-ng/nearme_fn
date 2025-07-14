// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:nearme_fn/features/home/data/models/doc_item_model.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';

///
class SavedModel {
  final int? id;
  final int? userId;
  final int? docItemId;
  final DocItemModel? docItem;
  final int? placeItemId;
  final PlaceItemModel? placeItem;
  SavedModel({
    this.id,
    this.userId,
    this.docItemId,
    this.docItem,
    this.placeItemId,
    this.placeItem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'docItemId': docItemId,
      'docItem': docItem?.toMap(),
      'placeItemId': placeItemId,
      'placeItem': placeItem?.toMap(),
    };
  }

  factory SavedModel.fromMap(Map<String, dynamic> map) {
    return SavedModel(
      id: map['id'] != null ? map['id'] as int : null,
      userId: map['userId'] != null ? map['userId'] as int : null,
      docItemId: map['docItemId'] != null ? map['docItemId'] as int : null,
      docItem:
          map['docItem'] != null
              ? DocItemModel.fromMap(map['docItem'] as Map<String, dynamic>)
              : null,
      placeItemId:
          map['placeItemId'] != null ? map['placeItemId'] as int : null,
      placeItem:
          map['placeItem'] != null
              ? PlaceItemModel.fromMap(map['placeItem'] as Map<String, dynamic>)
              : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SavedModel.fromJson(String source) =>
      SavedModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
