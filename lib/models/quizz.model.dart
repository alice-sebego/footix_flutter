class Quizz {
  final int id;
  final String title;
  final int categoryId;

  Quizz({
    required this.id,
    required this.title,
    required this.categoryId
  });

  // Deserialisation
  factory Quizz.fromJson(Map<String, dynamic> json) {
    return Quizz(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      title: json['title'],
      categoryId: json['categoryId'] is int ? json['categoryId'] : int.parse(json['categoryId']),
    );
  }

  // Serialisation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'categoryId': categoryId,
    };
  }
}