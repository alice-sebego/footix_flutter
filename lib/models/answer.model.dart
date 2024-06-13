class Answer {
  final int id;
  // ignore: non_constant_identifier_names
  final int? question_id;
  final String answer;
  // ignore: non_constant_identifier_names
  final bool? is_correct;

  Answer(
      {required this.id,
      // ignore: non_constant_identifier_names
      this.question_id,
      required this.answer,
      // ignore: non_constant_identifier_names
      this.is_correct});

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      question_id: json['question_id'] is int ? json['question_id'] : int.parse(json['question_id']),
      answer: json['answer'],
      is_correct: json['is_correct'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'question_id': question_id,
        'answer': answer,
        'is_correct': is_correct,
      };
}