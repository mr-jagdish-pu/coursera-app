import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
   String? photoUrl;


  UserModel({
    required this.id,
    required this.email,
    required this.name,
     this.photoUrl ='https://icon-library.com/images/person-icon-png-transparent/person-icon-png-transparent-13.jpg',
  });

  @override
  List<Object?> get props => [id, email, name, photoUrl];

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      photoUrl: json['photoUrl'],
    );
  }

  //from firebase usercredentials to usermodel



  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }
}