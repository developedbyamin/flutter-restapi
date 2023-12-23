class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimeZone timeZone;

  UserLocation({
   required this.city,
   required this.state,
   required this.country,
   required this.postcode,
   required this.street,
   required this.coordinates,
   required this.timeZone,
  });
  factory UserLocation.fromMap(Map<String, dynamic> json){
    final coordinates = LocationCoordinates.fromMap(json['coordinates']);
    final street = LocationStreet.fromMap(json['street']);
    final timeZone = LocationTimeZone.fromMap(json['timezone']);
    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      street: street,
      coordinates: coordinates,
      timeZone: timeZone,
    );
  }
}

class LocationStreet {
  final String number;
  final String name;
  LocationStreet({required this.number, required this.name});
  factory LocationStreet.fromMap(Map<String, dynamic> json){
    return LocationStreet(
      number: json['number'].toString(),
      name: json['name'],
    );
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitute;
  LocationCoordinates({required this.latitude, required this.longitute});
  factory LocationCoordinates.fromMap(Map<String, dynamic> json){
    return LocationCoordinates(
      latitude: json['latitude'].toString(),
      longitute: json['longitude'].toString(),
    );
  }
}

class LocationTimeZone {
  final String offset;
  final String description;
  LocationTimeZone({required this.offset, required this.description});
  factory LocationTimeZone.fromMap(Map<String, dynamic> json){
    return LocationTimeZone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
