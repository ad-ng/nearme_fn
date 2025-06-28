import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ErrorModel {
  final List<String> message;
  final String error;
  final int statusCode;

  ErrorModel({
    required this.message,
    required this.error,
    required this.statusCode,
  });

  // // Modify fromJson to properly handle the data.
  // factory ErrorModel.fromJson(Map<String, dynamic> json) {
  //   return ErrorModel(
  //     message: List<String>.from(json['message'] ?? []),
  //     error: json['error'] ?? 'Unknown Error',
  //     statusCode: json['statusCode'] ?? 500,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'error': error,
      'statusCode': statusCode,
    };
  }

  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    return ErrorModel(
      message: List<String>.from((map['message'] as List<String>)),
      error: map['error'] as String,
      statusCode: map['statusCode'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
