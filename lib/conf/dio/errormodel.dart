import 'dart:convert';

class ErrorModel {
  ErrorModel({
    required this.message,
    required this.error,
    required this.statusCode,
  });

  /// list of error messages
  final List<String> message;

  /// actual error message
  final String error;

  /// api error status code
  final int statusCode;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'error': error,
      'statusCode': statusCode,
    };
  }

  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    return ErrorModel(
      message: List<String>.from(map['message'] as List<String>),
      error: map['error'] as String,
      statusCode: map['statusCode'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
