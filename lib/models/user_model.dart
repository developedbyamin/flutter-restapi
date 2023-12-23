import 'package:restapi/models/user_dob.dart';
import 'package:restapi/models/user_location.dart';
import 'package:restapi/models/user_name.dart';
import 'package:restapi/models/user_picture.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation userLocation;
  final UserPicture userPicture;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.userLocation,
    required this.userPicture,
  });

  factory User.fromMap(Map<String, dynamic> user){
    final name = UserName.fromMap(user['name']);
    final dob = UserDob.fromMap(user['dob']);
    final location = UserLocation.fromMap(user['location']);
    final picture = UserPicture.fromMap(user['picture']);
    return User(
      cell: user['cell'],
      email: user['email'],
      gender: user['gender'],
      nat: user['nat'],
      phone: user['phone'],
      name: name,
      dob: dob,
      userLocation: location,
      userPicture: picture,
    );
  }

  String get fullName{
    return '${name.title} ${name.first} ${name.title}';
  }

}

