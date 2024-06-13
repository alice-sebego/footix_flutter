class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name
  });

  // Deserialisation
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      name: json['name']
    );
  }

  // Serialisation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
    };
  }
}