import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  bool? isVerified;
  String? country;
  String? Status;
  String? profileImg;
  String? dob;
  String? phoneNumber;
  String? role;
  UserModel({
    this.id,
    this.email,
    this.isVerified,
    this.role,
    this.firstName,
    this.lastName,
    this.gender,
    this.country,
    this.Status,
    this.profileImg,
    this.dob,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'email': email,
      'isVerified': isVerified,
      'country': country,
      'Status': Status,
      'profileImg': profileImg,
      'dob': dob,
      'phoneNumber': phoneNumber,
      'role': role,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      email: map['email'] as String,
      isVerified: map['isVerified'] as bool,
      country: map['country'] != null ? map['country'] as String : null,
      Status: map['Status'] != null ? map['Status'] as String : null,
      profileImg:
          map['profileImg'] != null ? map['profileImg'] as String : null,
      dob: map['dob'] != null ? map['dob'] as String : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
