class Places{
  String id,imageUrl,hotelName,locationName,night;
  int price;

//<editor-fold desc="Data Methods">
  Places({
    required this.id,
    required this.imageUrl,
    required this.hotelName,
    required this.locationName,
    required this.night,
    required this.price,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Places &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          imageUrl == other.imageUrl &&
          hotelName == other.hotelName &&
          locationName == other.locationName &&
          night == other.night &&
          price == other.price);

  @override
  int get hashCode =>
      id.hashCode ^
      imageUrl.hashCode ^
      hotelName.hashCode ^
      locationName.hashCode ^
      night.hashCode ^
      price.hashCode;

  @override
  String toString() {
    return 'Places{' +
        ' id: $id,' +
        ' imageUrl: $imageUrl,' +
        ' hotelName: $hotelName,' +
        ' locationName: $locationName,' +
        ' night: $night,' +
        ' price: $price,' +
        '}';
  }

  Places copyWith({
    String? id,
    String? imageUrl,
    String? hotelName,
    String? locationName,
    String? night,
    int? price,
  }) {
    return Places(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      hotelName: hotelName ?? this.hotelName,
      locationName: locationName ?? this.locationName,
      night: night ?? this.night,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'imageUrl': this.imageUrl,
      'hotelName': this.hotelName,
      'locationName': this.locationName,
      'night': this.night,
      'price': this.price,
    };
  }

  factory Places.fromMap(Map<String, dynamic> map) {
    return Places(
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      hotelName: map['hotelName'] as String,
      locationName: map['locationName'] as String,
      night: map['night'] as String,
      price: map['price'] as int,
    );
  }

//</editor-fold>
}

// List<Places> placingList=[
//   Places(id:'1', imageUrl:"", hotelName: hotelName, locationName: locationName, night: night, price: price)
// ];