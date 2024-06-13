class Question {
  final int id;
  final String question;
  final String? picture;
  final int level;
  final int quizzid;

  Question({
    required this.id,
    required this.question,
    this.picture,
    required this.level,
    required this.quizzid
  });

  // Deserialisation
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      question: json['question'],
      picture: json['picture'],
      level: json['level'] is int ? json['level'] : int.parse(json['level']),
      quizzid: json['quizzid'] is int ? json['quizzid'] : int.parse(json['quizzid'])
    );
  }

  // Serialisation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'picture': picture,
      'level': level,
      'quizzid': quizzid
    };
  }
}