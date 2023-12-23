class UserDob{
  final DateTime dateTime;
  final String age;
  UserDob({required this.dateTime, required this.age});

  factory UserDob.fromMap(Map<String, dynamic> json){
    return UserDob(
      age: json['age'].toString(),
      dateTime: DateTime.parse(json['date']),
    );
  }
}