 class SelectPlacesCategory {
 String id,imgUrl,placesName;

  //<editor-fold desc="Data Methods">
 SelectPlacesCategory({
    required this.id,
    required this.imgUrl,
    required this.placesName,
  });

 @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SelectPlacesCategory &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          imgUrl == other.imgUrl &&
          placesName == other.placesName);

 @override
  int get hashCode => id.hashCode ^ imgUrl.hashCode ^ placesName.hashCode;

 @override
  String toString() {
    return 'SelectPlacesCategory{' +
        ' id: $id,' +
        ' imgUrl: $imgUrl,' +
        ' placesName: $placesName,' +
        '}';
  }

 SelectPlacesCategory copyWith({
    String? id,
    String? imgUrl,
    String? placesName,
  }) {
    return SelectPlacesCategory(
      id: id ?? this.id,
      imgUrl: imgUrl ?? this.imgUrl,
      placesName: placesName ?? this.placesName,
    );
  }

 Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'imgUrl': this.imgUrl,
      'placesName': this.placesName,
    };
  }

  factory SelectPlacesCategory.fromMap(Map<String, dynamic> map) {
    return SelectPlacesCategory(
      id: map['id'] as String,
      imgUrl: map['imgUrl'] as String,
      placesName: map['placesName'] as String,
    );
  }

  //</editor-fold>
}

List<SelectPlacesCategory> places=[
 SelectPlacesCategory(id: '1', imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoC8vpCPtbOyf0KplOpeyECRs2NoXhLFooqKKMOVb7Q&s', placesName: 'Hotels & Restaurants'),
 SelectPlacesCategory(id: '2', imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoC8vpCPtbOyf0KplOpeyECRs2NoXhLFooqKKMOVb7Q&s', placesName: 'Gym & Exercise'),
 SelectPlacesCategory(id: '3', imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoC8vpCPtbOyf0KplOpeyECRs2NoXhLFooqKKMOVb7Q&s', placesName: 'Hiking trails & Reviers'),
 SelectPlacesCategory(id: '4', imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoC8vpCPtbOyf0KplOpeyECRs2NoXhLFooqKKMOVb7Q&s', placesName: 'Outdoor Activities'),
 SelectPlacesCategory(id: '5', imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoC8vpCPtbOyf0KplOpeyECRs2NoXhLFooqKKMOVb7Q&s', placesName: 'Indoor Activities'),
];